object Isogram {

    fun isIsogram(input: String): Boolean {
        val chars = 'a'..'z'

        val sorted = input
                .toLowerCase()
                .toList()
                .filter { chars.contains(it) }
                .sorted();

        return sorted
                .zip(sorted.drop(1), fun(a: Char, b: Char): Boolean {
                    return a.equals(b);
                })
                .none { it }
    }

    @JvmStatic
    fun main(args: Array<String>) {
        val bools = listOf(false);
        println(bools)
        println(bools.any())
        println(bools.any {it})

    }
}