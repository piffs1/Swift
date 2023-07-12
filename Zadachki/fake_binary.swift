// На вход подается строка. Числа меньше 5 - 0, больше и равные 5 - 1
// Правильно ли я перевел в массив и обратно?

/* Элегантное решение через closure
func fakeBin(digits: String) -> String {
  return digits.map({ $0 < "5" ? "0" : "1" }).joined()
}
*/

func fakeBin(digits: String) -> String {
  //your code here
  var result = Array(digits)
  for i in 0..<result.count {
    if(result[i] < "5") {
        result[i] = "0"
     } else {
        result[i] = "1"
     } 
  }
  return String(result)
}

