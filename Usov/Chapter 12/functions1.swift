import Foundation

// Типы void функции
func f() -> Void
{

}

func f1() -> ()
{
}

func f2()
{
}
//////////////////////

func sumTwoInt(num1 a: Int, num2 b: Int) { 
    // Для вызова функции - параметры будут слева(num1, num2)
    // Внутренняя работа будет с переменными a,b
    // -----------------------------------------
    // ВСЕ ПЕРЕМЕННЫЕ В АРГУМЕНТЕ ФУНКЦИИ КОНСТАНТНЫ! ИХ НЕЛЬЗЯ ИЗМЕНИТЬ!
    //a=5 // error: cannot assign to value: 'a' is a 'let' constant

    print("Result a+b is \(a+b)")
}

sumTwoInt(num1: 1, num2: 4)

func changeValues(_ a: inout Int, _ b: inout Int) -> Void { // Необходимо указать параметр inout!
    let tmp = a
    a = b
    b = tmp
}

var x = 12, y = 30
changeValues(&x,&y) // Передача по ссылке!!!
print(x, y) // 30, 12
// changeValues(12,13) // ERROR! :)) Ну тут понятно почему. 
// Все-таки плюсовое lvalue понимание, дает сразу понять в чем здесь проблема
// Нельзя взять адрес с этого, поэтому и нельзя :(



// Функция с переменным числом значений. 
func printRequestString(codes: Int...) -> Void { //codes:Int... ТИП ВХОДНОГО ПАРАМЕТРА -> ВАРИАТИВНЫЙ!!!
    // У одной функции может быть ТОЛЬКО ОДИН ВАРИАТИВНЫЙ ПАРАМЕТР!!! 
    // И СТОЯТЬ он ДОЛЖЕН В КОНЦЕ!!!
    // А как с параметром?
    var codesString = ""
    print("type of codesString is \(type(of:codesString))")
    for code in codes {
        codesString += String(code) + " "
    }
    print("Получены ответы - \(codesString)")

}

printRequestString(codes: 100,200,300,400) // Получены ответы - 100 200 300 400

// Явное возвращение кортежа из функции!!!
func getCodeDescription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
        case 1...100:
            description = "Error"
        case 101...200:
            description = "Correct"
        default:
            description = "Unknown"
    }

    return (code, description)
}

let request = getCodeDescription(code: 45)
print(request.code, request.description) // 45 Error

//Значение по умолчанию!
func returnMessage(code: Int, message: String = "Код - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

// refactor returnMEssage...
func returnMessageX(code: Int, codes: Int..., message: String = "Код - ") -> String {
    message + String(code) // Почему это работает?*??
}

print(returnMessageX(code: 42, codes: 100,200,300, message: "Privet - ")) // it works!

// refactor returnMEssage...
func returnMessageX2(code: Int, message: String = "Код - ",  codes: Int...) -> String {
    message + String(code) +  " " + String(codes[0]) // Почему это работает??? [Не выбрасывается ошибка об отсутствии return?!]
}

print(returnMessageX2(code: 42, message: "Hello Pacani - ", codes: 100,200,300)) // Hello Pacani - 42 100

// Функциональный тип. ИЛИ ТИП ФУНКЦИЙ!
print(type(of:returnMessageX2)) // (Int, String, Int...) -> String
print(type(of:returnMessageX)) // (Int, Int..., String) -> String
print(type(of:getCodeDescription)) // v(Int) -> (code: Int, description: String)
print(type(of:f)) // () -> () or () -> Void

// Сложный функциональный тип
// () -> () -> Void // Читаем слева направо. ФУнкция, возвращает функцию, возвращающая Void(ничего)
// (Int) -> (String) -> Bool // Функция принимает значение Int и возвращает
                             // Функцию принимающую String, которая возвращает Bool.
                             // ЛОгика слева - направо.
                             // Спросить бы ещё как оно
// (Int, (Int) -> Void) -> Bool
// Функция принимающая Int и Функцию(которая принимает Int и возвращает Void) и возвращает Bool


// Воплотим пример () -> () -> Void в реальность 
func printText() -> Void {
    print("Функция printText() вызвана.")
}
// Функция возвращающая функцию, которая возвращает Void
func returnPrintTextFunction() -> () -> Void {
    return printText // Скобки ставить не нужно! Иначе просто Void передается :/
}

let functionInLet = returnPrintTextFunction()
print(type(of:functionInLet)) // () -> Void или () -> ()
functionInLet() // Функция printText() вызвана.

