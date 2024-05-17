fun main() {
    val hoursWorked = 45
    val hourlyRate = 10.0
    val regularHours = 40
    val overtimeRate = 1.5

    val regularPay = if (hoursWorked <= regularHours) {
        hoursWorked * hourlyRate
    } else {
        regularHours * hourlyRate
    }

    val overtimeHours = if (hoursWorked > regularHours) {
        hoursWorked - regularHours
    } else {
        0
    }

    val overtimePay = overtimeHours * hourlyRate * overtimeRate

    val totalSalary = regularPay + overtimePay

    println("Total salary: $totalSalary")
}