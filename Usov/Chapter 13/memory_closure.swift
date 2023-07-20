func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}

var incrementByTen = makeIncrement(forIncrement: 10)
print(incrementByTen()) // 10
print(incrementByTen()) // 20
print(incrementByTen()) // 30
// Получается переменная сохраняет свое значение? Или как

var incrementBySeven = makeIncrement(forIncrement: 7)
print(incrementBySeven()) // 7
print(incrementBySeven()) // 14
print(incrementBySeven()) // 21

var copyIncrement = incrementByTen // Все функции ссылочного типа. 
                                   // Поэтом будет 40. copyIncrement = &incrementByTen

print(copyIncrement()) // 40

