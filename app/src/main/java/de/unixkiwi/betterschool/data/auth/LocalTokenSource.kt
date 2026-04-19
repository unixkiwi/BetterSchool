package de.unixkiwi.betterschool.data.auth

import android.util.Log
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
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

    suspend fun setToken(token: String) {
        val encryptedToken = cryptoManager.encrypt(token)
        dataStore.edit { prefs -> prefs[TOKEN_KEY] = encryptedToken }
    }

    suspend fun getToken(): String? {
        Log.d(TAG, "getToken called")
        return dataStore.data
            .map { prefs ->
                prefs[TOKEN_KEY]?.let { cryptoManager.decrypt(it) }
            }.firstOrNull()
    }

    suspend fun clearToken() {
        dataStore.edit { it.remove(TOKEN_KEY) }
    }
}