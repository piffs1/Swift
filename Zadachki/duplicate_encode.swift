/*
    Если символ встречается хоть раз в строке, то ему присваиваем ),
    Если символ ниразу не встретился в строке, возвращаем ( на месте результата,
    регистр независимый
    "din"      =>  "((("
    "recede"   =>  "()()()"
    "Success"  =>  ")())())"
    "(( @"     =>  "))((" 
*/


/*
//                  Элегантное решение
func duplicateEncode(_ word: String) -> String {
    var dict = [Character: Int](), word = word.lowercased()
    for letter in word { dict[letter, default: 0] += 1 }
    return word.map { dict[$0]! > 1 ? ")" : "(" }.joined()
}

func duplicateEncode(_ word: String) -> String {
    word.map{ ch in
        word.filter{ $0.lowercased() == ch.lowercased() }.count > 1 ? ")" : "("
    }.joined()
}

*/

func countSymbol(text: String, symbol: Character) -> Int
{
    var countSymbols: Int = 0
    for letter in text {
        if  letter == symbol {
            countSymbols += 1
        }
    }
    return countSymbols
}

func duplicateEncode(_ word: String) -> String {
  var result = ""
  for letter in word {
    if (countSymbol(text: word.lowercased(), symbol: Character(String(letter).lowercased())) > 1) {
      result.append(")")
    } else {
      result.append("(")
    }
  }
  return result
}

