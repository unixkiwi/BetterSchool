package de.unixkiwi.betterschool.di

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.preferencesDataStoreFile
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import de.unixkiwi.betterschool.data.auth.AuthRepository
import de.unixkiwi.betterschool.data.auth.LocalTokenSource
import net.openid.appauth.AuthorizationService
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
    fun provideLocalTokenSource(dataStore: DataStore<Preferences>): LocalTokenSource {
        return LocalTokenSource(dataStore)
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