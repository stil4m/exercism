import org.jetbrains.annotations.NotNull;

object Raindrops {

    @NotNull
    fun convert(input: Int): String {
        var result: String = listOf(
                if (input % 3 == 0) "Pling" else "",
                if (input % 5 == 0) "Plang" else "",
                if (input % 7 == 0) "Plong" else ""
        ).joinToString(separator = "")
        return if (result.equals("")) "${input}" else result
    }
}
