/// Является ли строка палиндромом?

func isPalyndrome(text: String) -> Bool {
    if (text.isEmpty) {return false}
    //  text.reversed() -> ReversedCollection<String>
    return text == String(text.reversed()) // Насколько быстро приводится к String()_?
}

print(isPalyndrome(text: "123321")) // true
print(isPalyndrome(text: "")) // false
print(isPalyndrome(text: "123210")) // false