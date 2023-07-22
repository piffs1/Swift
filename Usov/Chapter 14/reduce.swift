//reduce(base, closure) -> Base база с которой начинает. closure - действие

let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +) // -> 210 + 10 + 50 + 100 + 500 = 870
print(total)

let multiTotal = cash.reduce(210, {$0 * $1})
print(multiTotal) // 5250000000

print(cash.reduce(210, {$0 - $1})) // -450
//or
print(cash.reduce(210, {a,b in a-b})) //450
