// Начальное значение
var i = 1
var resultSum = 0
while i <= 10 {
    resultSum += i
    i += 1
}

print(resultSum) // 55

i = 1
resultSum = 0
// repeat {} while expression -> аналог do {} while (expression) C++
repeat {
    resultSum += i
    i += 1
} while false
print(resultSum) // 1

// continue - аналог С++

// FOR
// Итерируемая последовательность в цикле for должна быть Sequence!!! (Точно на собесе спросят) СТР.212
// В качестве аргумента может быть любая Sequence : Collection, Array, Dictionary, Set, Range, etc...
for elem in [1,3,5,7,9] {
    /// elem is 1, 3, 5, 7, 9
}
for elem in "Swift" {
    //elem is S w i f t
}
for elem in 1...5 {
    // elem is 1,2,3,4,5
}
//ВАЖНАЯ ОСОБЕННОСТЬ! Переменные внутри for являются локальнцыми
var myChar = "a"
let myString = "Swift"

for myChar in myString {
    let myString = "Char is "
    print("\(myString) \(myChar)")
}

print("\(myChar) \(myString)")

/*
output:
    Char is  S
    Char is  w
    Char is  i
    Char is  f
    Char is  t
    a Swift
*/

for _ in 1...3 {
    print("Repeating string") // Выведется трижды. 
}

// Перебор словаря
var countriesAndBlocks = ["Россия" : "СНГ", "Франция" : "ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}
//Россия вступила в СНГ
// Франция вступила в ЕС

// Перебор выборочный
for (countryName, _) in countriesAndBlocks{ 
    print ("\(countryName)")
}
// Франция
// Россия

// Перебор по ключам или значениям

for countryName in countriesAndBlocks.keys {
    print(countryName)
}
// Франция
// Россия

for orgName in countriesAndBlocks.values {
    print(orgName)
}
// ЕС
// СНГ

// Метод .enumerated() -> Необходим для получения индекса + значения
let kotiki = ["BORISKA", "ANTOSHA", "FELIX", "GARAJ", "PACAN", "SHAMAN"]

for (index, name) in kotiki.enumerated() {
    print("KOTIK #\(index+1) S IMENEM \(name)")
}

/*
out:
    KOTIK #1 S IMENEM BORISKA
    KOTIK #2 S IMENEM ANTOSHA
    KOTIK #3 S IMENEM FELIX
    KOTIK #4 S IMENEM GARAJ
    KOTIK #5 S IMENEM PACAN
    KOTIK #6 S IMENEM SHAMAN
*/

/// !!!!!!!!!!!!!!!!!!!!STRIDE!!!!!!!!!!!!!!!!!!!!!!
for i in stride( from: 1, through: 10, by: 3) {
    ///1 , 4, 7, 10
}

print(type(of:stride(from:1, to: 10, by:3))) // StrideTo<Int>

for i in stride( from: 1, to: 10, by: 3) {
    // 1, 4, 7
}

print(type(of:stride( from: 1, through: 10, by: 3))) // StrideThrough<Int>

// for with WHERE!!!!
for i in 1...10 where i % 2 == 0 { /// применение where применяется к каждой итерации.
    print(i) // 2, 4, 6, 8, 10
}

// Пример 1:
let isRun = true
for i in 1...10 where isRun {
    //doSome()
}

// Пример 2:
if (isRun) {
    for i in 1...10 {
        //doSome()
    }
}

// В случае примера 1. Проверка isRun будет выполняться 10 раз.
// В случае примера 2. Проверка isRun будет выполняться единожды и пойдёт цикл.

