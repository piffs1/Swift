import Foundation

//Перевернуть слова в строке, записанные через пробел
/// На дворе дрова
func reverseWords(_ input: String) -> String {
  let parts = input.components(separatedBy: " ")
  /// need guard?
  var result = ""
  for text in parts {
    result += text.reversed() + " "
  }

  result.removeLast() // Дропнуть ластовый пробел

  return result
}

func reverse2(_ input: String) -> String {
  let parts = input.components(separatedBy: " ")
  let reversed = parts.map {String($0.reversed()) }
  // Метод map возвращает массив, того, что записано в closure.
  // с виду эти замыкания какой-то рофл. Ну поглядим, поглядим...
  return reversed.joined(separator: " ")
}

print(reverseWords("Аты баты шли солдаты"))
print(reverse2("Аты баты шли солдаты"))
print(reverse2("Хеллоу мир Толясик крутит мир"))