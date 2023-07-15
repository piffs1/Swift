// Вычислить квадратный корень без использования sqrt()

// Функция принимает число Int, возвращает округленный корень до ближайщего целого

func squareRoot1(_ input: Int) -> Int{
    guard input != 1 else {return 1}


    for i in 0 ... input {
        if i*i > input {
            return i - 1
        }
    }
    
    return 0
}

import Foundation

func squareRoot2(_ input: Int) -> Int {
    return Int(pow(Double(input), 0.5)) // ну еще можно метод половинного деления добавить и вообще рипнуться от красоты
}

print(squareRoot2(143))

let x = 4.0
let y = x.squareRoot() // 2.0