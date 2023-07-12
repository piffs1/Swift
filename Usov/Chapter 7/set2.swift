// Операции со множествами

let oddDigits: Set = [1, 3, 5, 7, 9]

let evenDigits: Set = [0, 2, 4, 6, 8]
let differentDigits: Set = [1,2,3,8]
// intersection. Все общие элементы перечечения
print(differentDigits.intersection(oddDigits)) // [3, 1]
// symmetricDifference. Все элементы, которые не пересекаются. 
print(differentDigits.symmetricDifference(oddDigits)) // [8, 2, 9, 7, 5].
// Union. Все элементы.
print(evenDigits.union(oddDigits)) // [9, 6, 7, 3, 2, 8, 4, 5, 0, 1]
// subtracting. вычитание множества
print(differentDigits.subtracting(evenDigits)) // [3, 1]

// isSubset(of: set)
let aSet: Set = [1, 2, 3, 4, 5]
let bSet: Set = [1, 2, 3]
let cSet: Set = [5, 6, 7, 8]
print(bSet.isSubset(of: aSet)) // true
print(aSet.isSuperset(of: bSet)) // true
// isDisjoint(with: set). Если элементы отсутствуют общие, то true.
print(bSet.isDisjoint(with: aSet)) // false
print(bSet.isDisjoint(with: cSet)) // true

//isStrictSubset(of: set). Определяет является ли множество подмножеством
//или надмножеством не равным указанному множеству
//isStrictSuperset(of: set). Аналогично. Set<Int>[1,2,3],Set<Int>[1,2,3] == false 
print(bSet.isStrictSubset(of: aSet)) 

//Метод sorted(). Возвращает массив отсортированный
let setOfNums: Set = [1, 10, 12, 3, 4, 5,8]
let sortedArray = setOfNums.sorted()
print(sortedArray) //[1, 3, 4, 5, 8, 10, 12]
print(type(of:sortedArray)) //Array<Int>