// Функция возведения числа в степень. Два аргумента. База, Степень

import Foundation

func power(number: Double, pwr: Double) -> Double {
    guard number > 0, pwr > 0 else {return 0}
    let inPower = pow(number, pwr)
    return inPower
}

print(power(number: 5, pwr: 3)) /// 125.0 