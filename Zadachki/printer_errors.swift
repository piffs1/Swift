/*
    Принтер печатает цвета от a до m. Цвета после m - ошибочны. 
    Необходимо вывести ответ в форме "кол-во ошибок/длину строки"
    s="aaabbbbhaijjjm"
    printer_error(s) => "0/14"

    s="aaaxbbbbyyhwawiwjjjwwm"
    printer_error(s) => "8/22"
*/


/*
func printerError(_ s: String) -> String {
    let errors = s.filter { $0 > "m" }
    return "\(errors.count)/\(s.count)"
}
*/

/*

func printerError(_ s: String) -> String {
    var count = 0
    for c in s {
        count += ("a"..."m").contains(c) ? 0 : 1
    }
    return "\(count)/\(s.count)"
*/

func printerError(_ s: String) -> String {
  var errorCount = 0
  let validCharacters: ClosedRange<Character> = "a"..."m"
  
  for letter in s {
    if (!validCharacters.contains(letter)) {
        errorCount += 1
    }
  }
  
  return String(errorCount) + "/" + String(s.count)
  //return "\(errorCount)/\(s.count)"
}

print(printerError("aaabbbbhaijjjm")) // -> 0/14
print(printerError("aaaxbbbbyyhwawiwjjjwwm")) // -> 8/22