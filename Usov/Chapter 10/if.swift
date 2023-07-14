// Важное напоминание.
// Swift - язык со строгой типизацией
// Выражение как в C++
// var intVar = 1
// if (intVar) {} - не сработает. Выражение в if должно быть обязательно Bool

if !=1 { // Error: type 'Int' cannot be used as a boolean; test for '!= 0' instead
    print("Hello MIR")
}

// Не прокатит как в плюсах
var intVar = 10
if (intVar = 10) { // Error: type 'Int' cannot be used as a boolean; test for '!= 0' instead 
    print("HELLO MIR")
}

// Сравнение ренжами. КАКАЯ ЖЕ КРАСОТА, ПРОСТО A D O R A B L E
let number = 10
if (..<0).contains(number) {
    print("number \(number) is negative")
} else if (0...).contains(number) {
    print("number \(number) is positive")
}

// ТЕРНАРНЫЙ ОПЕРАТОР
let a = 5
let b = 10
a < b ? print("Переменная a меньше b") : print("Переменная b меньше a") // "Переменная a меньше b"

// ИСПОЛЬЗОВАНИЕ ТЕРНАРНОГО В ВЫЧИСЛЕНИЯХ!

let someValue = 100 + (a == 5 ? 10 : 20) // 100 + 10 = 110 

// Символ "," в условиях работает как &&

let a = Int.random(in: 1...100)
let b = Int.random(in: 1...100)

if a > 50, b > 50 { // if (a > 50, b > 50) -> компилятор ругается!
    print ("a=\(a) and b=\(b) > 50")
}

// Особенности выражений через ,
// 1. Выполнение идет последовательно, если первое выражение будет false, дальше выполнение не пойдёт.
// 2. Если есть присвоения, то они могут быть использованы дальше. Пример:
if let a = Int("43"), let b = Int("45"), a < b {
    print ("a < b") // a < b
}
// Код выполнится
