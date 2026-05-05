package de.unixkiwi.betterschool.ui.timetable

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import de.unixkiwi.betterschool.core.models.SchoolWeek
import de.unixkiwi.betterschool.data.auth.AuthRepository
import de.unixkiwi.betterschool.data.timetable.TimetableRepository
import de.unixkiwi.betterschool.utils.WeekString
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import java.time.LocalDate
import javax.inject.Inject

@HiltViewModel
class TimetableViewModel @Inject constructor(
    private val timetableRepository: TimetableRepository,
    private val authRepo: AuthRepository
) : ViewModel() {
    companion object {
        private const val TAG = "TimetableViewModel"
    }

    private val _uiState = MutableStateFlow<TimetableUiState>(TimetableUiState.Loading)
    val uiState: StateFlow<TimetableUiState> = _uiState.asStateFlow()

    fun updateSelectedPage(page: Int) {
        val currentState = _uiState.value
        if (currentState is TimetableUiState.Success) {
            _uiState.value = currentState.copy(index = page)
        }
    }

    init {
        Log.d(TAG, "init called")
        viewModelScope.launch {
            _uiState.value = TimetableUiState.Loading
            runCatching { authRepo.getToken() }
                .onSuccess { token ->
                    Log.i(TAG, "Got token")
                    if (token != null) {
                        runCatching { authRepo.isTokenExpired() }
                            .onSuccess { isExpired ->
                                if (isExpired) {
                                    Log.w(TAG, "Token has expired, user needs to re-authenticate")
                                    _uiState.value = TimetableUiState.Error(
                                        IllegalStateException("Token expired, please log in again")
                                    )
                                    return@launch
                                }

                                runCatching {
                                    Log.d(
                                        TAG,
                                        "Requesting data for ${
                                            WeekString.fromDateSmart(LocalDate.now())
                                        }"
                                    )
                                    timetableRepository.getWeek(
                                        WeekString.fromDateSmart(LocalDate.now()).toString(),
                                        authToken = "Bearer $token"
                                    )
                                }
                                    .onSuccess { week ->
                                        Log.i(TAG, "data: ${week.days}")

                                        val now = LocalDate.now()
                                        val index =
                                            if (now.dayOfWeek.value >= 6) {
                                                0
                                            } else {
                                                now.dayOfWeek.value - 1
                                            }

                                        _uiState.value =
                                            TimetableUiState.Success(week, index)
                                    }
                                    .onFailure { throwable ->
                                        Log.e(TAG, "init failed", throwable)
                                        _uiState.value = TimetableUiState.Error(throwable)
                                    }
                            }
                            .onFailure { throwable ->
                                Log.e(TAG, "failed to check token expiry", throwable)
                                _uiState.value = TimetableUiState.Error(throwable)
                                return@launch
                            }
                    } else {
                        Log.w(TAG, "received token was null")
                        _uiState.value =
                            TimetableUiState.Error(IllegalStateException("received token was null"))
                    }
                }
                .onFailure { throwable ->
                    Log.e(TAG, "failed to retrieve token", throwable)
                    _uiState.value = TimetableUiState.Error(throwable)
                    return@launch
                }
        }
    }
}

sealed interface TimetableUiState {
    data object Loading : TimetableUiState
    data class Success(val week: SchoolWeek, val index: Int) : TimetableUiState
    data class Error(val error: Throwable) : TimetableUiState
}