fun main() {
    val month = 1
    val day = 20

    val season = when (month) {
        1, 2, 12 -> "Winter"
        3 -> if (day >= 20) "Spring" else "Winter"
        4, 5 -> "Spring"
        6 -> if (day >= 21) "Summer" else "Spring"
        7, 8 -> "Summer"
        9 -> if (day >= 22) "Fall" else "Summer"
        10, 11 -> "Fall"
        else -> "Invalid Month"
    }

    println("The season is: $season")
}