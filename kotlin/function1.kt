fun bubbleSort(arr: IntArray) {
    val n = arr.size
    var swapped: Boolean

    do {
        swapped = false
        for (i in 1 until n) {
            if (arr[i - 1] > arr[i]) {
                val temp = arr[i]
                arr[i] = arr[i - 1]
                arr[i - 1] = temp
                swapped = true
            }
        }
    } while (swapped)
}

fun main() {
    val numbers = intArrayOf(5, 2, 7, 1, 9)
    
    bubbleSort(numbers)
    println("Array after sorting: ${numbers.contentToString()}")
}