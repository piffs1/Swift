// Вычесть без минуса

func substraction(_ substract: Int, _ from: Int) -> Int {
    return from + (~substract + 1)
}


// Пример. 64                  (01000000)
// Применяя оператор ~ будет 1 (10111111) (-65)
// А ещё же 0 есть. Поэтому нужно добавить + 1... Логика антихайпа

print(substraction(2,3)) // -1