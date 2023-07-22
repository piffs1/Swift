/// closure .map(closure($0))
/// Позволяет применить к каждому элементу необходимую операцию closure с аргументом $0
let array = [2, 4, 5, 7]
var newArray = array.map({
    (value: Int) -> Int in
    return value
})

print(newArray) // 2,4,5,7

// Оптимизируем функцию map 
var newArray2 = array.map{value in value*2}
print(newArray2) // [4, 8, 10, 14]
// Оптимизируем еще больше
var newArray3 = array.map{$0}
print(newArray3) // [2, 4, 5, 7]

var sqrArray = array.map{$0*$0}
print(sqrArray) // [4, 16, 25, 49]

// Поместим bool array
var boolArray = array.map{ $0 & 2 == 1}
print(boolArray) // [false, false, true, true]

let stroka = "Hello mir"
let toDelSymbols = "eli"
print(String(stroka.map{toDelSymbols.contains($0) ? "_" : $0})) // H___o m_r
