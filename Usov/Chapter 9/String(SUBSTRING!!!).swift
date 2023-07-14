//
let char = "\u{E9}" // é
let anotherChar = "\u{65}\u{301}"

print(char==anotherChar) // true o_O

let thumbsUp = "\u{1f44d}"

let cafeSimple = "caf\u{E9}" // café
let cafeCombine = "cafe\u{301}" // café
print(cafeSimple.count == cafeCombine.count) // true
//Индексы
let name = "e\u{301}lastic"
let index = name.startIndex

print(type(of:index)) // Index

let firstChar = name[index]
print(firstChar)

let lastIndex = name.endIndex // Как в плюсах. Указывает за последний элемент.

print(name[name.index(before: name.endIndex)]) // c. 
// String.index(before: Index) - возвращает индекс перед выбранным
// String.index(after:startIndex) -> возвращает индекс после выбранного
print(name[name.index(after: index)]) // l
// String.index(index, offsetBy: val) -> возвращает Index с отступом от index на val (и) и хамаи соответственно
let thirdCharacter = name.index(name.startIndex, offsetBy: 3)
print(name[thirdCharacter])  // l 

print("Количество элементов в строке name \(name.count)") // 7
print("Количество unicode-scalar в строке name \(name.unicodeScalars.count)") // 8
/// SUBSTRING!!! 
// Substring для String. Как ArraySlice для Array!!! reference-type, ссылается на одну область памяти.
// Новая не выделяется.
var alphabet = "abcdefghijklmnopqrsuvwxyz"
let alphabetFirstIndex = alphabet.startIndex
let alphabetFifthIndex = alphabet.index(alphabet.startIndex, offsetBy: 4)
// Делаем САБ СТРИНГИ)))))))))))))))))))))))))))))
// Извините.
var subAlphabet = alphabet[alphabetFirstIndex...alphabetFifthIndex]
print(type(of:subAlphabet)) // Substring

print(subAlphabet) // "abcde"
subAlphabet = "2"
print(subAlphabet) // "2"

print(alphabet) // "abcdefghijklmnopqrsuvwxyz" , странно, почему...............