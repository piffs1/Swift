// На входе число n. Вернуть массив от n до 1

/*
func reverseSeq(n: Int) -> [Int] {
  return (1...n).reversed()
  // return Array(1...n).reversed()
}

*/

func reverseSeq(n: Int) -> [Int] {
  var arrResult: [Int] = []
  for index in stride(from: n, to: 0, by: -1) {
    arrResult.append(index)
}
  return arrResult
}