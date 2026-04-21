package de.unixkiwi.betterschool.ui.timetable

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import de.unixkiwi.betterschool.data.auth.AuthRepository
import de.unixkiwi.betterschool.data.timetable.BesteSchuleJournalLesson
import de.unixkiwi.betterschool.data.timetable.TimetableRepository
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

    init {
        Log.d(TAG, "init called")
        viewModelScope.launch {
            _uiState.value = TimetableUiState.Loading
            runCatching { authRepo.getToken() }
                .onSuccess { token ->
                    Log.i(TAG, "Got token")
                    if (token != null) {
                        runCatching {
                            timetableRepository.getWeek(
                                "2026-17",
                                authToken = "Bearer $token"
                            )
                        }
                            .onSuccess { week ->
                                Log.i(TAG, "data: ${week.days}")

                                _uiState.value =
                                    TimetableUiState.Success(week.days[LocalDate.now().dayOfWeek.value].lessons)
                            }
                            .onFailure { throwable ->
                                Log.e(TAG, "init failed", throwable)
                                _uiState.value = TimetableUiState.Error(throwable)
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
    data class Success(val lessons: List<BesteSchuleJournalLesson>) : TimetableUiState
    data class Error(val error: Throwable) : TimetableUiState
}