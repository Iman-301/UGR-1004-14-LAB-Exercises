fun hasUniqueCharacters(str: String): Boolean {
    val seen = HashSet<Char>()

    for (char in str) {
        if (seen.contains(char)) {
            return false
        }
        seen.add(char)
    }

    return true
}

fun main() {
    val str1 = "Openii"
    val str2 = "Unique"

    val hasUnique1 = hasUniqueCharacters(str1)
    val hasUnique2 = hasUniqueCharacters(str2)

    println("$str1 contains only unique characters: $hasUnique1")
    println("$str2 contains only unique characters: $hasUnique2")
}