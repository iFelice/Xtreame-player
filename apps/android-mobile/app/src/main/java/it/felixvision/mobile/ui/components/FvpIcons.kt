package it.felixvision.mobile.ui.components

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.addPathNodes
import androidx.compose.ui.unit.dp

/**
 * Icone vettoriali dell'app tablet.
 *
 * Il progetto non dichiara `androidx.compose.material:material-icons-*`: le
 * icone (un sottoinsieme delle Material Symbols) sono definite qui come
 * `ImageVector`, con i percorsi nel viewport 24x24, così non serve nessuna
 * libreria in più. Il percorso è disegnato una sola volta a primo accesso.
 */
object FvpIcons {

    private fun icon(name: String, pathData: String): ImageVector =
        ImageVector.Builder(
            name = name,
            defaultWidth = 24.dp,
            defaultHeight = 24.dp,
            viewportWidth = 24f,
            viewportHeight = 24f,
        ).addPath(
            pathData = addPathNodes(pathData),
            fill = SolidColor(Color.White),
        ).build()

    /** Novità (sparkles). */
    val Novita: ImageVector by lazy {
        icon(
            "Novita",
            "M19,9l1.25,-2.75L23,5l-2.75,-1.25L19,1l-1.25,2.75L15,5l2.75,1.25L19,9z" +
                "M11.5,9.5L9,4 6.5,9.5 1,12l5.5,2.5L9,20l2.5,-5.5L17,12l-5.5,-2.5z" +
                "M19,15l-1.25,2.75L15,19l2.75,1.25L19,23l1.25,-2.75L23,19l-2.75,-1.25L19,15z",
        )
    }

    /** Continua a guardare (history). */
    val Continua: ImageVector by lazy {
        icon(
            "Continua",
            "M13,3c-4.97,0 -9,4.03 -9,9L1,12l3.89,3.89 0.07,0.14L9,12L6,12c0,-3.87 3.13,-7 7,-7s7," +
                "3.13 7,7 -3.13,7 -7,7c-1.93,0 -3.68,-0.79 -4.94,-2.06l-1.42,1.42C8.27,19.99 10.51,21 " +
                "13,21c4.97,0 9,-4.03 9,-9s-4.03,-9 -9,-9zM12,8v5l4.28,2.54 0.72,-1.21 -3.5,-2.08L13.5,8L12,8z",
        )
    }

    /** Live (live_tv). */
    val Live: ImageVector by lazy {
        icon(
            "Live",
            "M21,6h-7.59l3.29,-3.29L16,2l-4,4 -4,-4 -0.71,0.71L10.59,6L3,6c-1.1,0 -2,0.89 -2,2v12c0," +
                "1.1 0.9,2 2,2h18c1.1,0 2,-0.9 2,-2L23,8c0,-1.11 -0.9,-2 -2,-2zM21,20L3,20L3,8h18v12zM9,10v8l7,-4z",
        )
    }

    /** Film (movie). */
    val Film: ImageVector by lazy {
        icon(
            "Film",
            "M18,4l2,4h-3l-2,-4h-2l2,4h-3l-2,-4L8,4l2,4L7,8 5,4L4,4c-1.1,0 -1.99,0.9 -1.99,2L2,18c0," +
                "1.1 0.9,2 2,2h16c1.1,0 2,-0.9 2,-2L22,4h-4z",
        )
    }

    /** Serie (video_library). */
    val Serie: ImageVector by lazy {
        icon(
            "Serie",
            "M4,6L2,6v14c0,1.1 0.9,2 2,2h14v-2L4,20L4,6zM20,2L8,2c-1.1,0 -2,0.9 -2,2v12c0,1.1 0.9,2 2," +
                "2h12c1.1,0 2,-0.9 2,-2L22,4c0,-1.1 -0.9,-2 -2,-2zM12,14.5v-9l6,4.5 -6,4.5z",
        )
    }

    /** Preferiti piena (star). */
    val Star: ImageVector by lazy {
        icon(
            "Star",
            "M12,17.27L18.18,21l-1.64,-7.03L22,9.24l-7.19,-0.61L12,2 9.19,8.63 2,9.24l5.46,4.73L5.82,21z",
        )
    }

    /** Preferiti vuota (star_border). */
    val StarOutline: ImageVector by lazy {
        icon(
            "StarOutline",
            "M22,9.24l-7.19,-0.62L12,2 9.19,8.63 2,9.24l5.46,4.73L5.82,21 12,17.27 18.18,21l-1.63," +
                "-7.03L22,9.24zM12,15.4l-3.76,2.27 1,-4.28 -3.32,-2.88 4.38,-0.38L12,6.1l1.71,4.04 4.38," +
                "0.38 -3.32,2.88 1,4.28L12,15.4z",
        )
    }

    /** Cerca (search). */
    val Cerca: ImageVector by lazy {
        icon(
            "Cerca",
            "M15.5,14h-0.79l-0.28,-0.27C15.41,12.59 16,11.11 16,9.5 16,5.91 13.09,3 9.5,3S3,5.91 3," +
                "9.5 5.91,16 9.5,16c1.61,0 3.09,-0.59 4.23,-1.57l0.27,0.28v0.79l5,4.99L20.49,19l-4.99," +
                "-5zM9.5,14C7.01,14 5,11.99 5,9.5S7.01,5 9.5,5 14,7.01 14,9.5 11.99,14 9.5,14z",
        )
    }

    /** Impostazioni (settings). */
    val Impostazioni: ImageVector by lazy {
        icon(
            "Impostazioni",
            "M19.14,12.94c0.04,-0.3 0.06,-0.61 0.06,-0.94 0,-0.32 -0.02,-0.64 -0.07,-0.94l2.03,-1.58c" +
                "0.18,-0.14 0.23,-0.41 0.12,-0.61l-1.92,-3.32c-0.12,-0.22 -0.37,-0.29 -0.59,-0.22l-2.39," +
                "0.96c-0.5,-0.38 -1.03,-0.7 -1.62,-0.94l-0.36,-2.54c-0.04,-0.24 -0.24,-0.41 -0.48,-0.41h" +
                "-3.84c-0.24,0 -0.43,0.17 -0.47,0.41l-0.36,2.54c-0.59,0.24 -1.13,0.57 -1.62,0.94l-2.39," +
                "-0.96c-0.22,-0.08 -0.47,0 -0.59,0.22L2.74,8.87c-0.12,0.21 -0.08,0.47 0.12,0.61l2.03,1.58c" +
                "-0.05,0.3 -0.09,0.63 -0.09,0.94s0.02,0.64 0.07,0.94l-2.03,1.58c-0.18,0.14 -0.23,0.41 " +
                "-0.12,0.61l1.92,3.32c0.12,0.22 0.37,0.29 0.59,0.22l2.39,-0.96c0.5,0.38 1.03,0.7 1.62," +
                "0.94l0.36,2.54c0.05,0.24 0.24,0.41 0.48,0.41h3.84c0.24,0 0.44,-0.17 0.47,-0.41l0.36," +
                "-2.54c0.59,-0.24 1.13,-0.56 1.62,-0.94l2.39,0.96c0.22,0.08 0.47,0 0.59,-0.22l1.92,-3.32c" +
                "0.12,-0.22 0.07,-0.47 -0.12,-0.61l-2.01,-1.58zM12,15.6c-1.98,0 -3.6,-1.62 -3.6,-3.6s1.62," +
                "-3.6 3.6,-3.6 3.6,1.62 3.6,3.6 -1.62,3.6 -3.6,3.6z",
        )
    }

    /** Guida TV (schedule). */
    val Guida: ImageVector by lazy {
        icon(
            "Guida",
            "M11.99,2C6.47,2 2,6.48 2,12s4.47,10 9.99,10C17.52,22 22,17.52 22,12S17.52,2 11.99,2zM12," +
                "20c-4.42,0 -8,-3.58 -8,-8s3.58,-8 8,-8 8,3.58 8,8 -3.58,8 -8,8zM12.5,7L11,7v6l5.25,3.15 " +
                "0.75,-1.23 -4.5,-2.67z",
        )
    }

    /** Maniglia di trascinamento (drag_indicator). */
    val DragHandle: ImageVector by lazy {
        icon(
            "DragHandle",
            "M11,18c0,1.1 -0.9,2 -2,2s-2,-0.9 -2,-2 0.9,-2 2,-2 2,0.9 2,2zM9,10c-1.1,0 -2,0.9 -2,2s0.9," +
                "2 2,2 2,-0.9 2,-2 -0.9,-2 -2,-2zM9,4c-1.1,0 -2,0.9 -2,2s0.9,2 2,2 2,-0.9 2,-2 -0.9,-2 -2," +
                "-2zM15,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM15,10c-1.1,0 -2,0.9 -2," +
                "2s0.9,2 2,2 2,-0.9 2,-2 -0.9,-2 -2,-2zM15,16c-1.1,0 -2,0.9 -2,2s0.9,2 2,2 2,-0.9 2,-2 -0.9,-2 -2,-2z",
        )
    }

    /** Già visto (visibility). */
    val Seen: ImageVector by lazy {
        icon(
            "Seen",
            "M12,4.5C7,4.5 2.73,7.61 1,12c1.73,4.39 6,7.5 11,7.5s9.27,-3.11 11,-7.5c-1.73,-4.39 -6," +
                "-7.5 -11,-7.5zM12,17c-2.76,0 -5,-2.24 -5,-5s2.24,-5 5,-5 5,2.24 5,5 -2.24,5 -5,5zM12,9c" +
                "-1.66,0 -3,1.34 -3,3s1.34,3 3,3 3,-1.34 3,-3 -1.34,-3 -3,-3z",
        )
    }

    /** Riproduci (play_arrow). */
    val Play: ImageVector by lazy {
        icon("Play", "M8,5v14l11,-7z")
    }

    /** Chiudi (close). */
    val Chiudi: ImageVector by lazy {
        icon(
            "Chiudi",
            "M19,6.41L17.59,5 12,10.59 6.41,5 5,6.41 10.59,12 5,17.59 6.41,19 12,13.41 17.59,19 19," +
                "17.59 13.41,12z",
        )
    }

    /** Indietro (arrow_back). */
    val Indietro: ImageVector by lazy {
        icon("Indietro", "M20,11L7.83,11l5.59,-5.59L12,4l-8,8 8,8 1.41,-1.41L7.83,13L20,13v-2z")
    }

    /** Apri/chiudi elenco (expand_more). */
    val ChevronGiù: ImageVector by lazy {
        icon("ChevronGiu", "M7.41,8.59L12,13.17l4.59,-4.58L18,10l-6,6 -6,-6 1.41,-1.41z")
    }

    /** Modifica (edit). */
    val Modifica: ImageVector by lazy {
        icon(
            "Modifica",
            "M3,17.25L3,21h3.75L17.81,9.94l-3.75,-3.75L3,17.25zM20.71,7.04c0.39,-0.39 0.39,-1.02 0," +
                "-1.41l-2.34,-2.34c-0.39,-0.39 -1.02,-0.39 -1.41,0l-1.83,1.83 3.75,3.75 1.83,-1.83z",
        )
    }
}
