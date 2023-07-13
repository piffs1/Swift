/*
    accum("abcd") -> "A-Bb-Ccc-Dddd"
    accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
    accum("cwAt") -> "C-Ww-Aaa-Tttt"
*/


/*
func accum(_ str: String) -> String {
    return str.characters.enumerated().map {
        repeatElement(String($1), count: $0 + 1)
            .joined()
            .capitalized
    }
        .joined(separator: "-")
}
*/

/*
func accum(_ s: String) -> String {
    var result = [String]()
    
    for (i, value) in s.lowercased().enumerated() {
        var string = Array(repeating: value, count: i+1).map { String($0) }.joined().capitalized
        result.append(string)
    }
    
    return result.joined(separator: "-")
}
*/


func accum(_ s: String) -> String {
  if (s.isEmpty) {return s} // Пока туплю и не знаю как работает guard...
  let strArr = Array(s)
  var strResult: Array<Character> = []
  for i in 0..<strArr.count {
      var letter = strArr[i]
      strResult.append( Character(String(letter).uppercased()) ) 
      for j in 0..<i {
          strResult.append(Character(String(letter).lowercased()))
      }
      strResult.append("-")
  }
  if (strResult.count > 1) { // Случай "A"
      strResult.removeLast()
  }
  return String(strResult)
}

print(accum("Privet")) // P-Rr-Iii-Vvvv-Eeeee-Tttttt
print(accum("RqaEzty")) // R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy
print(accum("A")) // A