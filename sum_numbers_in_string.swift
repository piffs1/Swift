    /// Сложение чисел в строке
    // a2b3c4 -> 2 + 3 + 4 = 9
    // a3b2c11 -> 116

    func SumNumbers(_ val: String) -> Int {
        var sum = 0
        var currentNumber = ""
        for letter in val {
            let curNum = String(letter)

            if (Int(curNum) != nil) {
                currentNumber += curNum  
            } else {
                sum += Int(currentNumber) ?? 0 // тернарка. Если можем сделать Int(currentNumber) иначе 0
                currentNumber = ""
            }
        }
        sum += Int(currentNumber) ?? 0 
        return sum
    }

    print(SumNumbers("a3b2c111"))