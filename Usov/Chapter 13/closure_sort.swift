let array = [1, 110, 18, 72, 44, 52, 98]
var sortedArrayInc = array.sorted(by: {(first: Int, second: Int) -> Bool in
    return first < second
})
print(sortedArrayInc) // [1, 18, 44, 52, 72, 98, 110]

let sortedArrayDesc = array.sorted(by: {(first: Int, second: Int) -> Bool in
    return first > second
})
print(sortedArrayDesc) // [110, 98, 72, 52, 44, 18, 1]

// Оптимизируем код...

sortedArrayInc = array.sorted(by: {$0 < $1}) // ok

sortedArrayInc = array.sorted(by: <) // ok
