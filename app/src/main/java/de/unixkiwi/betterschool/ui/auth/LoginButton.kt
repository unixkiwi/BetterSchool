package de.unixkiwi.betterschool.ui.auth

import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LoginButton(
    onClick: () -> Unit, isRetry: Boolean
    = false, modifier: Modifier = Modifier
) {
    Button(onClick = onClick) {
        Text(
            text = if (isRetry) {
                "Retry login"
            } else {
                "Login with beste.schule"
            }
        )
    }
}