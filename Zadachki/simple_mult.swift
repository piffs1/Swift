//Если число четное, умножаем на 8, если нечетное - на 9
func simpleMultiplication(_ num: Int) -> Int {
  return num & 1 == 0 ? num*8 : num*9
}