// Числа в строке

// Функция возвращает true если строка содержит только числа


// Данный метод плох, если число больше UInt.max... 
// Если явно вычесть UInt.min - 1 или UInt.max + 1, будет ошибка комплияции. Ну шо за шедевр
func isOnlyNumbersInString(_ input: String) -> Bool {
    return UInt(input) != nil 
}

print(isOnlyNumbersInString("-1234")) // false

print(isOnlyNumbersInString("1234")) // true

func isOnlyNumbersInStringFixed(_ input: String) -> Bool {
    for letter in input {
        if Int(String(letter)) == nil { // Нельзя тип Character конвертировать в Int. String можно.
            return false
        }
    }
    return true
}


let overflowValue = String(UInt.max) + "23" //1844674407370955161523
print(isOnlyNumbersInString(overflowValue)) // false. BUG!!!!
print(isOnlyNumbersInStringFixed(overflowValue)) // true. ok.