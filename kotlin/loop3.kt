fun isPalindrome(number: Int): Boolean {
    var originalNumber = number
    var reversedNumber = 0

    while (originalNumber != 0) {
        val digit = originalNumber % 10
        reversedNumber = reversedNumber * 10 + digit
        originalNumber /= 10
    }

    return number == reversedNumber
}

fun main() {
    val number = 12321

    val isPalindrome = isPalindrome(number)

    if (isPalindrome) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}