package de.unixkiwi.betterschool.data.auth

import android.content.Context
import android.util.Base64
import com.google.crypto.tink.Aead
import com.google.crypto.tink.KeyTemplates
import com.google.crypto.tink.RegistryConfiguration
import com.google.crypto.tink.aead.AeadConfig
import com.google.crypto.tink.integration.android.AndroidKeysetManager

class CryptoManager(context: Context) {
    init {
        AeadConfig.register()
    }

    private val masterKeyUri = "android-keystore://_androidx_security_master_key_"

    private val aead: Aead by lazy {
        AndroidKeysetManager.Builder()
            .withSharedPref(context, "tink_keyset", "tink_key_pref")
            .withKeyTemplate(KeyTemplates.get("AES256_GCM"))
            .withMasterKeyUri(masterKeyUri)
            .build()
            .keysetHandle
            .getPrimitive(RegistryConfiguration.get(), Aead::class.java)
    }

    fun encrypt(data: String): String {
        val ciphertext = aead.encrypt(data.toByteArray(), null)
        return Base64.encodeToString(ciphertext, Base64.DEFAULT)
    }

    fun decrypt(encryptedData: String): String {
        val ciphertext = Base64.decode(encryptedData, Base64.DEFAULT)
        return String(aead.decrypt(ciphertext, null))
    }
}