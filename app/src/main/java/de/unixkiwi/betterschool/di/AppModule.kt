package de.unixkiwi.betterschool.di

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.preferencesDataStoreFile
import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import de.unixkiwi.betterschool.core.BESTE_SCHULE_BASE_URL
import de.unixkiwi.betterschool.data.auth.AuthRepository
import de.unixkiwi.betterschool.data.auth.CryptoManager
import de.unixkiwi.betterschool.data.auth.LocalTokenSource
import de.unixkiwi.betterschool.data.timetable.RemoteTimetableSource
import de.unixkiwi.betterschool.data.timetable.TimetableRepository
import net.openid.appauth.AuthorizationService
import net.openid.appauth.BuildConfig
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory
import retrofit2.create
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {
    @Provides
    @Singleton
    fun provideAuthorizationService(@ApplicationContext context: Context): AuthorizationService {
        return AuthorizationService(context)
    }

    @Provides
    @Singleton
    fun providePreferencesDataStore(@ApplicationContext context: Context): DataStore<Preferences> {
        return PreferenceDataStoreFactory.create(
            produceFile = { context.preferencesDataStoreFile("auth_preferences") }
        )
    }

    @Provides
    @Singleton
    fun provideRemoteTimetableSource(): RemoteTimetableSource {
        val moshi = Moshi.Builder()
            .addLast(KotlinJsonAdapterFactory())
            .build()

        val logging = HttpLoggingInterceptor().apply {
            level = if (BuildConfig.DEBUG) {
                HttpLoggingInterceptor.Level.BODY
            } else {
                HttpLoggingInterceptor.Level.BODY
            }
        }

        val client = OkHttpClient.Builder()
            .addInterceptor(logging)
//            .addInterceptor(AuthInterceptor(token)) // Your auth interceptor from earlier
            .build()



        return Retrofit.Builder()
            .baseUrl(BESTE_SCHULE_BASE_URL)
            .client(client)
            .addConverterFactory(MoshiConverterFactory.create(moshi).asLenient())
            .build()
            .create()
    }

    @Provides
    @Singleton
    fun provideTimetableRepository(remoteSource: RemoteTimetableSource): TimetableRepository {
        return TimetableRepository(remoteSource)
    }

    @Provides
    @Singleton
    fun provideCryptoManager(@ApplicationContext context: Context): CryptoManager {
        return CryptoManager(context)
    }

    @Provides
    @Singleton
    fun provideLocalTokenSource(
        dataStore: DataStore<Preferences>,
        cryptoManager: CryptoManager
    ): LocalTokenSource {
        return LocalTokenSource(dataStore, cryptoManager)
    }

    @Provides
    @Singleton
    fun provideAuthRepository(
        authorizationService: AuthorizationService,
        localTokenSource: LocalTokenSource
    ): AuthRepository {
        return AuthRepository(authorizationService, localTokenSource)
    }
}