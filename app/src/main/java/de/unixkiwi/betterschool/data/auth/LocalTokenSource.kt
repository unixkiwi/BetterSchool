package de.unixkiwi.betterschool.data.auth

import android.util.Log
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map

class LocalTokenSource(
    private val dataStore: DataStore<Preferences>,
    private val cryptoManager: CryptoManager
) {
    companion object {
        private const val TAG = "LocalTokenSource"
    }

    private val TOKEN_KEY = stringPreferencesKey("besteschule_token")
    private val TOKEN_EXPIRY_KEY = longPreferencesKey("besteschule_token_expiry")

    suspend fun setToken(token: String, expiryTimeMillis: Long? = null) {
        val encryptedToken = cryptoManager.encrypt(token)
        dataStore.edit { prefs ->
            prefs[TOKEN_KEY] = encryptedToken
            if (expiryTimeMillis != null) {
                prefs[TOKEN_EXPIRY_KEY] = expiryTimeMillis
            }
        }
    }

    suspend fun getToken(): String? {
        Log.d(TAG, "getToken called")
        return dataStore.data
            .map { prefs ->
                prefs[TOKEN_KEY]?.let { cryptoManager.decrypt(it) }
            }.firstOrNull()
    }

    suspend fun isTokenExpired(): Boolean {
        Log.d(TAG, "isTokenExpired called")
        val expiryTime = dataStore.data
            .map { prefs -> prefs[TOKEN_EXPIRY_KEY] }
            .firstOrNull()

        return if (expiryTime != null) {
            val isExpired = System.currentTimeMillis() >= expiryTime
            Log.d(
                TAG,
                "Token expiry check: current=${System.currentTimeMillis()}, expiry=$expiryTime, isExpired=$isExpired"
            )
            isExpired
        } else {
            Log.w(TAG, "No expiry time stored, assuming token is not expired")
            false
        }
    }

    suspend fun clearToken() {
        dataStore.edit {
            it.remove(TOKEN_KEY)
            it.remove(TOKEN_EXPIRY_KEY)
        }
    }
}