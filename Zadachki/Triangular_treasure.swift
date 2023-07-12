/*
1st (1)   2nd (3)    3rd (6)
*          **        ***
           *         **
                     *
Вычислить для n рядного треугольника.
*/

/* Elegant solution
func triangular(_ n: Int) -> Int{
    guard n > 0 else { return 0 }
    return n * (1 + n) / 2
}
*/

func triangular(_ n: Int) -> Int{
  if (n <= 0) {return 0}
  if (n == 1) {return 1}
  return triangular(n-1)+n
}

