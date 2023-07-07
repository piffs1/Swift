func isIdenticStrings(in1: String, in2: String) -> Bool
{
    return in1.sorted() == in2.sorted()
}

print(isIdenticStrings(in1:"AabbbbbB", in2:"BbabbbbA")) //true
print(isIdenticStrings(in1:"RoFL", in2:"ROLL")) // false


func countSymbol(text: String, symbol: Character) -> Int
{
    var countSymbols: Int = 0
    for letter in text {
        if letter == symbol {
            countSymbols += 1
        }
    }
    return countSymbols
}

print(countSymbol(text: "ABBCCC", symbol: "C")) /// 3

