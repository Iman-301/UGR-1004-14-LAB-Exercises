fun main() {
    var sum = 0

    for (number in 1..50) {
        if (number % 2 == 0) {
            sum += number
        }
    }

    println("The sum of even numbers from 1 to 50 is: $sum")
}