// Проверить простое ли число. Простое число делится на 1 и само себя.

func isPrimeNumber(_ number: Int) -> Bool {

    guard number >= 2 else {return false}

    for i in 2 ..< number { // ПРОБЕЛ МЕЖДУ 2 и .. ОБЯЗАТЕЛЕН! 
        if number % i == 0 {
            return false
        }
    }

    return true
}

print(isPrimeNumber(19)) // true