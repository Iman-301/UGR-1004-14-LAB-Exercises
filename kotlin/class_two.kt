class Triangle(val side1: Double, val side2: Double, val side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }
    
    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }
    
    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}

fun main() {
    val triangle1 = Triangle(5.0, 5.0, 5.0)
    val triangle2 = Triangle(5.0, 5.0, 3.0)
    val triangle3 = Triangle(3.0, 4.0, 5.0)

    println("1 is equilateral: ${triangle1.isEquilateral()}")
    println("1 is isosceles: ${triangle1.isIsosceles()}")
    println("1 is scalene: ${triangle1.isScalene()}")

    println("2 is equilateral: ${triangle2.isEquilateral()}")
    println("2 is isosceles: ${triangle2.isIsosceles()}")
    println("2 is scalene: ${triangle2.isScalene()}")

    println("3 is equilateral: ${triangle3.isEquilateral()}")
    println("3 is isosceles: ${triangle3.isIsosceles()}")
    println("3 is scalene: ${triangle3.isScalene()}")
}