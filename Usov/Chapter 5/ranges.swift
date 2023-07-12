// Неявное указание Range
let myRange = 1..<500
print(type(of:myRange)) // Range<Int>. Range [1;500)
// Явное указание Range
let someMyRange: Range<Int> = 1..<10
print(type(of:someMyRange)) // Range<Int>. Range [1;10)

// Диапазон типа String
let rangeString = "a"..<"z"
print(type(of:rangeString)) // Range<String>
// Диапазон типа Character
let rangeCharacter: Range<Character> = "a"..<"z" 
//НАПОМИНАНИЕ! ЛЮБОЙ СИМВОЛ ОДИНАРНЫЙ АВТОМАТИЧЕСКИ
//ВОСПРИНИМАЕТСЯ КАК String!!! 
//Character НУЖНО УКАЗЫВАТЬ ЯВНО!
print(type(of:rangeCharacter)) // Range<Character>
// Диапазон типа Double
let rangeDouble = 1.0..<5.0
print(type(of:rangeDouble)) // Range<Double>

// NOTE: Компилятор отдает предпочтение String, нежели Character
//                                      Double, нежели Float
//                                      Int,    нежели Int8
//  НЕЛЬЗЯ ДЕЛАТЬ RANGE(5..2)
// -------------------------ОПРЕДЕЛЕНИЕ RANGE ПРИ ПОМОЩИ ПЕРЕМЕННЫX----------------------
let firstElement = 10
var lastElement = 18
let myBestRange = firstElement..<lastElement
// -------------------------ОПРЕДЕЛЕНИЕ RANGE ТОЛЬКО ПРАВОЙ ГРАНИЦЫ ДИАПАЗОНА------------
let myNewRange = ..<500 // Префиксная форма
print(type(of: myNewRange)) // PartialRangeUpTo<Int> - Comparable 
//--------------------------ОПРЕДЕЛЕНИЕ ЗАКРЫТОГО RANGE----------------------------------
let myClosedRange = 1...100
print(type(of: myClosedRange)) // ClosedRange<Int> - Comparable
//--------------------------ОПРЕДЕЛЕНИЕ RANGE ТОЛЬКО ДЛЯ ЛЕВОЙ ГРАНИЦЫ ДИАПАЗОНА---------
var myLeftRange = 2...
print(type(of: myLeftRange)) // PartialRangeFrom<Int> - Comparable
// Тип диапазона может быть использован при работе с коллекциями.
// Необходимо получить элементы от 2 до последнего(Где последний неизвестен)
let collection = [1, 6, 76, 12, 51]
print( collection[myLeftRange] ) //[76, 12, 51]
//myLeftRange = 10...
//print( collection[myLeftRange] ) // Вылетит
// ------------------------ОПРЕДЕЛЕНИЕ RANGE С ПРАВОЙ ЖЕСТКОЙ ГРАНИЦЕЙ------------------
let myRightRange = ...0
print(type(of: myRightRange)) // PartialRangeThrough<Int>- Comparable

// Базовые свойства и методы Range's...
let intR = 1...10
print(intR.count) // 10. [1...10]
print(intR.contains(2)) // true
print(intR.contains(-1)) // false
// Определение границ диапазонов
print(intR.lowerBound) // 1
print(intR.upperBound) // 10
// Методы ClosedRange<Int>.min(),max() работают только для целых
print(intR.max()) /// 10
print(intR.min()) // 1


let floatR: ClosedRange<Float> = 1.0...2.0
print(floatR.contains(1.40001)) // true
// Определение пустого диапазона
let emptyR = 0..<0
print(emptyR.count) // 0
print(emptyR.isEmpty) // true
