package de.unixkiwi.betterschool.ui.timetable

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import de.unixkiwi.betterschool.core.models.SchoolWeek
import de.unixkiwi.betterschool.data.auth.AuthRepository
import de.unixkiwi.betterschool.data.timetable.TimetableRepository
import de.unixkiwi.betterschool.data.timetable.groupedForTimetable
import de.unixkiwi.betterschool.utils.WeekString
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.datetime.toJavaLocalDate
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

    fun updateWeek(week: WeekString, isGoBackAction: Boolean = false) {
        Log.d(TAG, "updateWeek called with week: $week, isGoBackAction: $isGoBackAction")
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
                                    Log.d(TAG, "Requesting data for $week")
                                    timetableRepository.getWeek(
                                        week.toString(),
                                        authToken = "Bearer $token"
                                    )
                                }
                                    .onSuccess { weekResult ->
                                        val groupedWeek = weekResult.groupedForTimetable()

                                        val now = LocalDate.now()

                                        val index = if (week == WeekString.fromDateSmart(now)) {
                                            if (now.dayOfWeek.value >= 6) {
                                                0
                                            } else {
                                                now.dayOfWeek.value - 1
                                            }
                                        } else {
                                            if (isGoBackAction) {
                                                groupedWeek.days.size - 1
                                            } else {
                                                0
                                            }
                                        }

                                        _uiState.value =
                                            TimetableUiState.Success(groupedWeek, index)
                                    }
                                    .onFailure { throwable ->
                                        Log.e(TAG, "updateWeek failed", throwable)
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

    fun goToPreviousWeek() {
        val currentState = _uiState.value
        if (currentState is TimetableUiState.Success) {
            val currentWeek = currentState.week
            val firstDay = currentWeek.days.firstOrNull()?.date
            val previousWeek = if (firstDay == null) {
                Log.w(TAG, "Current week has no days, settings to week before current")
                WeekString.fromDateSmart(LocalDate.now()).previousWeek()
            } else {
                WeekString.fromDate(firstDay.toJavaLocalDate()).previousWeek()
            }
            updateWeek(previousWeek, isGoBackAction = true)
        }
    }

    fun goToNextWeek() {
        val currentState = _uiState.value
        if (currentState is TimetableUiState.Success) {
            val currentWeek = currentState.week
            val firstDay = currentWeek.days.firstOrNull()?.date
            val previousWeek = if (firstDay == null) {
                Log.w(TAG, "Current week has no days, settings to week before current")
                WeekString.fromDateSmart(LocalDate.now()).nextWeek()
            } else {
                WeekString.fromDate(firstDay.toJavaLocalDate()).nextWeek()
            }
            updateWeek(previousWeek, isGoBackAction = false)
        }
    }

    init {
        Log.d(TAG, "init called")
        updateWeek(WeekString.fromDateSmart(LocalDate.now()))
    }
}

sealed interface TimetableUiState {
    data object Loading : TimetableUiState
    data class Success(val week: SchoolWeek, val index: Int) : TimetableUiState
    data class Error(val error: Throwable) : TimetableUiState
}