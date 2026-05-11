package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialShapes
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.toShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import de.unixkiwi.betterschool.R

@OptIn(ExperimentalMaterial3ExpressiveApi::class)
@Composable
fun TimetableEmptyDayScreen(modifier: Modifier = Modifier) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        item {
            Box(
                modifier = Modifier
                    .size(200.dp)
                    .background(
                        color = MaterialTheme.colorScheme.primaryContainer,
                        shape = MaterialShapes.Flower.toShape()
                    ),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    painterResource(R.drawable.ic_check_circle_rounded_24dp),
                    null,
                    modifier = Modifier
                        .size(120.dp)
                        .padding(12.dp),
                    tint = MaterialTheme.colorScheme.onPrimary
                )
            }
        }
        item {
            Spacer(modifier = Modifier.height(80.dp))
        }
        item {
            Text(
                "No lessons today",
                style = MaterialTheme.typography.displayMediumEmphasized.copy(fontFamily = FontFamily.Cursive)
            )
        }
    }
}