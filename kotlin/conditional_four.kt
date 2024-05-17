fun main() {
    val number1 = 10
    val number2 = 25
    val number3 = 15

    val largestNumber = if (number1 > number2) {
        if (number1 > number3) {
            number1
        } else {
            number3
        }
    } else {
        if (number2 > number3) {
            number2
        } else {
            number3
        }
    }

    println("The largest number is: $largestNumber")
}