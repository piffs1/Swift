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

