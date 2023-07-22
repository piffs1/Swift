//flatMap(closure($0)) -> В отличии от map возвращает всегда одномерный массив!

let numbersArray = [1, 2, 3, 4]
let flatMapped = numbersArray.flatMap {Array(repeating: $0, count: $0)}
let mapped = numbersArray.map {Array(repeating: $0, count: $0)}
print(flatMapped) // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
print(mapped) // [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]

//И в обратную сторону.

let someFilteredArray = mapped.flatMap{$0}
print(someFilteredArray) // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

