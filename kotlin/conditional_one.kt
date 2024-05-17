fun main() {
    val side1 = 5.0
    val side2 = 6.0
    val side3 = 5.0

    if (side1 == side2 && side2 == side3) {
        println("equilateral.")
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        println("isosceles.")
    } else {
        println("scalene.")
    }
}