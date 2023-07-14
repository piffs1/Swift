// swift-case

// Работа с кортежами.

let answer : (code: Int, message: String) = (code: 404, message: "Page not found")

switch answer {
    case (100..<400, _):
        print(answer.message)
    case (400..<500, _): 
        assert(false, answer.message)
    default:
        print("Incorrect server response")
}

// Или сложный switch с использованием кортежей
// Есть три коробки
// В первую коробку помещаются красные кубики, высотой не более 10 см
// Во вторую коробку помещаются только зеленые кубики, высотой не более 10 см
// В третью коробку помещаются зеленые и красные кубики, высотой больше 10 см

let cubicCharacters : (color: String, height: Float) = ("красный",11.4)
var message = ""

var cubicCount = 3

switch cubicCharacters {
    case ("красный", ..<10.0):
        message = "Кубик помещен в коробку №1"
    case ("зеленый", ..<10.0):
        message = "Кубик помощен в коробку №2"
    // Можно и дефолтом конечно, но...
    case ("зеленый", 10.0...) where cubicCount < 5 && true, // where создает дополнительное условие проверки
         ("красный", 10.0...) where cubicCount < 5 && true:
         // В case необходимо, чтобы where (expression), expression был true. 
         // Если хоть одно выражение будет false, то этот блок не выберется.
         // Если в нашем случае поставить cubicCount < 3 ("красный", 10.0...) where cubicCount < 3:
         // то у нас выберется блок default:
        message = "Кубик помещен в коробку №3"
    default:
        message = "Ошибка ввода"
}
print(message) /// Кубик помещен в коробку №3


//Связывание значениий
switch cubicCharacters {
    case ("красный", ..<10.0):
        message = "Кубик помещен в коробку №1"
    case ("зеленый", ..<10.0):
        message = "Кубик помощен в коробку №2"
    // Можно и дефолтом конечно, но...
    case ("зеленый", let height ) where cubicCount < 5 && height < 10, //Тут я просто решил пошалить. По идее height > 10.
         ("красный", let height ) where cubicCount < 5 && height > 10:
        // Добавляем поле, которое есть в кортеже (height). Если указать имя, которого нет в кортеже
        // Тебе хана. Монтана естественно
        message = "Кубик помещен в коробку №3"
    default:
        message = "Ошибка ввода"
}
print(message) /// Кубик помещен в коробку №3

// А можно вообще на красивый понт взять
// Аналогично ^
switch cubicCharacters {
    case ("красный", ..<10.0):
        message = "Кубик помещен в коробку №1"
    case ("зеленый", ..<10.0):
        message = "Кубик помощен в коробку №2"
    // Можно и дефолтом конечно, но...
    case (let color, let height) where (color == "красный" || color == "зеленый") && height > 10:
        // Добавляем поле, которое есть в кортеже (height). Если указать имя, которого нет в кортеже
        // Тебе хана. Монтана естественно
        message = "Кубик помещен в коробку №3"
    default:
        message = "Ошибка ввода"
}
print(message) /// Кубик помещен в коробку №3

// Чтобы завершить безошибочно работу switch-case. Можно в блок default: break

let someValue = 122
switch someValue { // Без конструкции default, Swift выдаст : error: switch must be exhaustive
    default:
        break
}

//fallthrough -> Продолжает выполнение case, без проверки на условие. 
// В плюсах fallthrough по дефолту я так понимаю... break - можно остановить
let level: Character = "B"
switch level {
    case "A":
        print("Выруби приборы")
        // break - Если здесь поставить, свитч выйдет. Вывод будет "Выруби приборы"
        fallthrough
        // Код ниже fallthrough в блоке, будет игнориться. 
        print("ZXC") // - он уже не выведет.
    case "B":
        print("Закрывай дверки и окна")
        fallthrough
    case "C":
        print("Соблюдай спокойствие, пацан")
    default:
        break
}
// Output:
// Закрывай дверки и окна
// Соблюдай спокойствие, пацан