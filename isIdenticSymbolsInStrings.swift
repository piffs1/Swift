func isIdenticSymbolsInStrings(in1: String, in2: String) -> Bool
{
    return in1.sorted() == in2.sorted()
}

print(isIdenticSymbolsInStrings(in1:"AabbbbbB", in2:"BbabbbbA")) //true
print(isIdenticSymbolsInStrings(in1:"RoFL", in2:"ROLL")) // false


