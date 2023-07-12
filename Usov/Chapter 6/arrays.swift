// Создание массива с помощью Array(ArrayLiteral: )
let alphabetArray = Array(arrayLiteral: "a","b","c")
print(alphabetArray)
// Создание массива с помощью Range
let lineArray = Array(0...5)
print(lineArray) // [0, 1, 2, 3, 4, 5]
// Создание при помощи repeating: Any, count: Int
let repArray = Array(repeating: "РОССИЯ", count: 3) 
print(repArray) // ["РОССИЯ", "РОССИЯ", "РОССИЯ"]
// Доступ к элементам массива
var mutableArray = Array(0...10)
print(mutableArray[5]) // 5
mutableArray[0...5] = [5] // = 5 не получится. В этом случае значения от 0 до 5 заменяются 5. 
// Итоговый массив
print(mutableArray) // [5, 6, 7, 8, 9, 10]
// Объявление массивов ЯВНОЕ
let arr1: Array<Int> = [1, 2, 3]
let arr2: [Int] = [1, 2, 3]
print(arr1==arr2) // true
// -----------------ОБЪЯВЛЕНИЕ МАССИВОВ-------------------
let emptyArray: [String] = []
let emptyArray2 = [String]()
// -----------------СРАВНЕНИЕ МАССИВОВ--------------------
let (a1, a2, a3) = (1, 2, 3)
var someArray = [1, 2, 3]
print(someArray == [a1, a2, a3]) // true. при import Foundation или import UIKit может возникнуть ошибка. СТР.154
// -----------------СЛИЯНИЕ МАССИВОВ----------------------
// Естественно массивы должны быть одного типа
let chOne: [Character] = ["a", "b", "c"]
let chTwo: [Character] = ["d", "e", "F"]
print(chOne + chTwo) // ["a", "b", "c", "d", "e", "F"]
// -----------------СОЗДАНИЕ МАТРИЦЫ----------------------
let arrayOfArraysExplicit: Array<Array<Int>> = [[]] // ok
let arrayOfArraysExplicitBriefly: [[Int]] 
print(type(of:arrayOfArraysExplicitBriefly)) /// Array<Array<Int>>

var arrayOfArrays = [
    [1,2,3], 
    [4,5,6], 
    [7,8,9]
] // Не проверял в XCode, но вроде так можно :)
print(type(of:arrayOfArrays)) /// Array<Array<Int>>
print(arrayOfArrays[1][0]) // 4

// Базовые свойства и методы массивов

var someArray = [1, 2, 3, 4, 5]
print(someArray.count) // 5

let emptyArray: [Int] = []
print(emptyArray.isEmpty) // true

//Сделаем срез массива
let sliceArray = someArray[someArray.count-3...someArray.count-1]
print(sliceArray) // [3, 4, 5]

let subArray = someArray.suffix(3) // [4,5] / suffix(3) [3, 4, 5] / suffix(4) [2, 3, 4, 5]
// по сути slice [someArray.count - suffix(arg)...someArray.count-1]
print(subArray)

// Методы first и last
print(someArray.first) // 1
print(someArray.last) // 5. Они еще 
// ИЗМЕНЯТЬ НЕЛЬЗЯ! GET-ONLY!
someArray.append(6)
print(someArray) // [1, 2, 3, 4, 5, 6]
someArray.insert(100, at: 2)
print(someArray) // [1, 2, 100, 3, 4, 5, 6]
// УДАЛЕНИЕ ИЗ МАССИВА
print(someArray.remove(at: 2)) // 100. Метод remove возвращает удаляемый элемент
print(someArray.removeFirst()) // 1
print(someArray.removeLast()) // 6
print(someArray)  //[2, 3, 4, 5]
// НАЛИЧИЕ В МАССИВЕ
print(someArray.contains(240)) // false
print(someArray.contains(2)) // true
// Максимум и минимум
let randArr = [3, 2, 4, 5, 7, 8, 10, 2, 1, -1]
print(randArr.min()) // -1
print(randArr.max()) // 10

// ArraySlice! Срезы массивов, опасности:
let arr = Array(1...10)
let slice = arr[4...6]
print(type(of:slice)) // ArraySlice<Int>
// СТР.159!!! Важно подчеркнуть! ArraySlice - не коппирует элементы массива, а продолжает
// Ссылаться на область выделенную область памяти от основного Array. 
// Необохимо ограничить использование ArraySlice по возможности

// Преобразование ArraySlice в Array
let arrayFromSlice = Array(slice)
print(type(of: arrayFromSlice)) // Array<Int>

