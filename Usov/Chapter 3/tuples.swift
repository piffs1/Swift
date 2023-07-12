import Foundation

// РЕКОМЕНДАЦИИ УСОВА ВАСИ
// Не хранить больше 3-4 элементов в кортеже
// Кортежи могут быть любой произвольной длины

let myProgramStatus = (200, "In Work", true)
print(type(of:myProgramStatus)) // (Int, String, Bool)

let myProgramStatusX = (Decimal(200), "In Work", true)
print(type(of:myProgramStatusX)) // (NSDecimal, String, Bool) -- тип данных кортежа 

let tupleOne = myProgramStatus

let tupleTwo = (true, "In Work", 200) // (Bool, String, Int) 

print(type(of: tupleOne) == type(of: tupleTwo)) // false. Порядок не тот.

// --------------------ЯВНОЕ ОБЪЯВЛЕНИЕ КОРТЕЖА--------------------------
let tupleThree: (Float, String, Bool) = (200.2, "In Work", true)
print(type(of:tupleThree)) // (Float, String, Bool)

typealias numberType = Int

let numbersTuple: (Int, Int, numberType, numberType) = (0, 1,2,3)
print(type(of:numbersTuple)) // (Int, Int, Int, Int)
// --------------------ИЗВЛЕЧЕНИЕ ДАННЫХ В ОТДЕЛЬНЫЕ ПЕРЕМЕННЫЕ------------------

let (statusCode, statusText, statusConnect) = myProgramStatus
print("Код ответа - \(statusCode)") // 200
print("Текст ответа - \(statusText)") // "In Work"
print("Связь с сервером - \(statusConnect)") // true

//--------------------Непосредственная инициализация---------------------
var (myName, myAge) = ("Бориска", 3) 
print("Моё имя \(myName), мне \(myAge)") 

let (statusCodeX, _, _) = myProgramStatus // возьмем только statusCode. Остальное игнорируем
//--------------------ДОСТУП ЧЕРЕЗ ИНДЕКСЫ----------------------
print("Код ответа - \(myProgramStatus.0)") // 200
print("Текст ответа - \(myProgramStatus.1)") // "In Work"
print("Связь с сервером - \(myProgramStatus.2)") // true
//--------------------ДОСТУП ЧЕРЕЗ ИМЕНА-------------------------
print("-----------------Доступ через имена кортежа-----------------")
let statusTuple = (statusCode: 200, statusText: "In Work", statusConnect: true)
print("Код ответа - \(statusTuple.statusCode)") // 200
print("Текст ответа - \(statusTuple.statusText)") // "In Work"
print("Связь с сервером - \(statusTuple.2)") // true
//--------------------ЯВНОЕ ОПИСАНИЕ ТИПА ЧЕРЕЗ ИМЕНА-------------------
let anotherStatusTuple: (statusCode: Int, statusText: String, statusConnect: Bool) = (200, "In Work", true)
//--------------------ПРИСВОЕНИЕ В КОРТЕЖ ДРУГОГО КОРТЕЖА
var myFirstTuple: (Int, String) = (0, "0")
let mySecTuple = (100, "Код")
//копируем одно значение в другое
myFirstTuple = mySecTuple
print(mySecTuple) // (100, "Код")
//---------------------ИЗМЕНЕНИЕ ЭЛЕМЕНТВО КОРТЕЖА----------------------------
var someTuple = (200, true)
someTuple.0 = 404
someTuple.1 = false
print(someTuple) // (404, false)
//---------------------СРАВНЕНИЕ КОРТЕЖЕЙ-------------------------------
// Сперва сравнивается первые элементы кортежа, если первые элементы идентичны, то вторые, если и вторые идентичны, то третьи и тд
print((1, "alpha") < (2, "beta")) // true. 2 > 1
print((4, "beta") < (4, "gamma")) // true. 4 и 4 идентичны, он сравнил gamma и beta
print((3.14, "pi") == (3.14, "pi")) // true. Равны
// В Swift возможно сравнивать кортежи с кол-вом элементов менее 7!!!. Ограничение Apple
// print((1,2,3,4,5,6,7,8) < (1,2,3,4,5,6,7,8)) //  error: binary operator '<' cannot be applied to two '(Int, Int, Int, Int, Int, Int, Int, Int)' operands
