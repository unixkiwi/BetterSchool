package de.unixkiwi.betterschool.data.auth

import android.content.Intent
import android.util.Log
import androidx.core.net.toUri
import de.unixkiwi.betterschool.AUTHORIZE_URI
import de.unixkiwi.betterschool.CLIENT_ID
import de.unixkiwi.betterschool.REDIRECT_URI
import de.unixkiwi.betterschool.TOKEN_URI
import kotlinx.coroutines.suspendCancellableCoroutine
import net.openid.appauth.AuthorizationRequest
import net.openid.appauth.AuthorizationResponse
import net.openid.appauth.AuthorizationService
import net.openid.appauth.AuthorizationServiceConfiguration
import net.openid.appauth.CodeVerifierUtil
import net.openid.appauth.ResponseTypeValues
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

class AuthRepository(
    private val authService: AuthorizationService,
    private val localTokenSource: LocalTokenSource
) {
    companion object {
        private const val TAG = "AuthRepo"
    }

    private val config = AuthorizationServiceConfiguration(
        AUTHORIZE_URI.toUri(),
        TOKEN_URI.toUri()
    )

    fun createAuthRequestIntent(): Intent {
        val codeVerifier = CodeVerifierUtil.generateRandomCodeVerifier()

        return authService.getAuthorizationRequestIntent(
            AuthorizationRequest.Builder(
                config,
                CLIENT_ID,
                ResponseTypeValues.CODE,
                REDIRECT_URI.toUri()
            ).setCodeVerifier(codeVerifier).build()
        )
    }

    suspend fun isTokenLocally(): Boolean {
        Log.d(TAG, "isTokenLocally called!")
        val token: String? = localTokenSource.getToken()
        Log.d(TAG, "called getToken!")
        return !token.isNullOrEmpty()
    }

    suspend fun getToken(): String? {
        Log.d(TAG, "getToken() called!")
        return localTokenSource.getToken()
    }

    suspend fun clearToken() {
        Log.d(TAG, "clearToken() called")
        localTokenSource.clearToken()
        Log.w(TAG, "Cleared token!")
    }

    suspend fun getTokenFromAuthResponse(authResponse: AuthorizationResponse) {
        val accessToken = suspendCancellableCoroutine { cont ->
            val tokenRequest = authResponse.createTokenExchangeRequest()

            authService.performTokenRequest(tokenRequest) { res, ex ->
                if (!cont.isActive) return@performTokenRequest

                when {
                    ex != null -> {
                        Log.e(TAG, "Msg: $ex")
                        cont.resumeWithException(ex)
                    }

                    res?.accessToken != null -> cont.resume(res.accessToken!!)

                    else -> cont.resumeWithException(IllegalStateException("No access token"))
                }
            }
        }

        localTokenSource.setToken(accessToken)
    }
}