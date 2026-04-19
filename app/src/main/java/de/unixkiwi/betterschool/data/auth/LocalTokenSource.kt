package de.unixkiwi.betterschool.data.auth

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences

class LocalTokenSource(private val dataStore: DataStore<Preferences>) {
    suspend fun getToken() {

    }

    suspend fun setToken() {

    }
}