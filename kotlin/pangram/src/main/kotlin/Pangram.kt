object Pangram {
    val allChars = 'a'..'z'

    fun isPangram(input: String): Boolean =
            allChars.all { input.contains(char = it, ignoreCase = true) }

}
