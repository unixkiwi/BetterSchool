package de.unixkiwi.betterschool.ui.auth

import android.content.Intent
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import de.unixkiwi.betterschool.data.auth.AuthRepository
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import net.openid.appauth.AuthorizationException
import net.openid.appauth.AuthorizationResponse
import javax.inject.Inject

@HiltViewModel
class AuthViewModel @Inject constructor(
    private val authRepo: AuthRepository
) : ViewModel() {
    companion object {
        private const val TAG = "AuthViewModel"
    }

    private val _uiState = MutableStateFlow<AuthUiState>(AuthUiState.Idle)
    val uiState: StateFlow<AuthUiState> = _uiState.asStateFlow()

    init {
        Log.d(TAG, "init called")
        viewModelScope.launch {
            _uiState.value = AuthUiState.Loading
            runCatching { authRepo.isTokenLocally() }
                .onSuccess { hasToken ->
                    _uiState.value = if (hasToken) {
                        Log.i(TAG, "hasToken = true")
                        AuthUiState.Success(authRepo.getToken() ?: "null :(")
                    } else {
                        Log.i(TAG, "hasToken = false")
                        AuthUiState.Idle
                    }
                }
                .onFailure { throwable ->
                    Log.e(TAG, "init failed", throwable)
                    _uiState.value = AuthUiState.Error(throwable)
                }
        }
    }

    fun onLoginClicked(onIntentReady: (Intent) -> Unit) {
        viewModelScope.launch {
            runCatching { authRepo.createAuthRequestIntent() }
                .onSuccess(onIntentReady)
                .onFailure { throwable ->
                    Log.e(TAG, "Failed to create auth intent", throwable)
                    _uiState.value = AuthUiState.Error(throwable)
                }
        }
    }

    fun onClearClicked() {
        viewModelScope.launch {
            runCatching { authRepo.clearToken() }
                .onSuccess {
                    _uiState.value =
                        AuthUiState.Error(Throwable("Token is: ${authRepo.getToken()}"))
                }
                .onFailure { throwable ->
                    Log.e(TAG, "Failed to clear token", throwable)
                }
        }
    }

    fun onLoginCanceled(resultCode: Int) {
        _uiState.value = AuthUiState.Canceled(resultCode)
    }

    fun handleAuthResult(data: Intent?) {
        Log.d(TAG, "data: $data")

        if (data == null) {
            _uiState.value =
                AuthUiState.Error(IllegalStateException("OAuth callback has no intent data"))
            return
        }

        val ex = AuthorizationException.fromIntent(data)
        if (ex != null) {
            Log.e(TAG, "Authorization failed: ${ex.error} (${ex.errorDescription})", ex)
            _uiState.value = AuthUiState.Error(ex)
            return
        }

        val result = AuthorizationResponse.fromIntent(data)
        if (result == null) {
            _uiState.value =
                AuthUiState.Error(IllegalStateException("Missing authorization response for token exchange"))
            return
        }

        _uiState.value = AuthUiState.Loading
        viewModelScope.launch {
            runCatching { authRepo.getTokenFromAuthResponse(result) }
                .onSuccess {
                    _uiState.value = AuthUiState.Success(authRepo.getToken() ?: "null :(")
                }
                .onFailure { throwable ->
                    Log.e(TAG, "Token exchange invocation failed", throwable)
                    _uiState.value = AuthUiState.Error(throwable)
                }
        }
    }
}

sealed interface AuthUiState {
    data object Idle : AuthUiState
    data object Loading : AuthUiState
    data class Success(val token: String) : AuthUiState
    data class Canceled(val resultCode: Int) : AuthUiState
    data class Error(val error: Throwable) : AuthUiState
}