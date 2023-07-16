/*
    expandedForm 12    -- Should return '10 + 2'
    expandedForm 42    -- Should return '40 + 2'
    expandedForm 70304 -- Should return '70000 + 300 + 4'
*/

func expandedForm(_ num: Int64) -> String {
  let numToArrayS = String(num)
  
  var result = ""
  
  for (index, value) in numToArrayS.enumerated() {
      if (value != "0") {
          result.append(value)
          let upperRange = numToArrayS.count - index - 1
          for _ in 0..<upperRange {
              result.append("0")
          }
          //if (index < numToArrayS.count-1) { // Проверка на последний символ. Там не нужно ставить " + ".
                                             // Не знаю как цикл сделать enumerated-1 красиво...
          result += " + "
          //}
      }
  }
  // Вырезать последние три символа...
  result.removeLast() ; result.removeLast(); result.removeLast() // AHAHAHHAHAHAHAHAHHA DONT KILL ME.
  // В чем различие dropLast() от removeLast()?
  return result
}

print(expandedForm(100))