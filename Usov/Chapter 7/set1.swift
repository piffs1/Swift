///Варианты создания множества

let dishes: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]
let dishesTwo : Set = ["хлеб", "овощи", "тушенка", "вода"]

var members = Set<String>(arrayLiteral: "Энакин", "Оби Ван", "Йода")
var membersTwo = Set(arrayLiteral: "Энакин", "Оби Ван", "Йода")
//ПУСТОЕ МНОЖЕСТВО
let emptySet = Set<String>()
var setWithValues: Set<String> = ["dengi", "babki"]

setWithValues = []
print(type(of:setWithValues)) // Set<String>
//Вставка в множество
//!!! МНОЖЕСТВО НЕУПОРЯДОЧЕННАЯ КОЛЛЕКЦИЯ В SWIFT!!!

var myMusicStyleSet: Set<String> = []
var (inserted, element) = myMusicStyleSet.insert("Jazz")
// false возвращается, если элемент уже есть в множестве!
print("Element \"\(element)\" inserted? \(inserted)") // Element "Jazz" inserted? true

print(myMusicStyleSet) /// ["Jazz"]
myMusicStyleSet.insert("Hip-Hop")
myMusicStyleSet.insert("Rock")

print(myMusicStyleSet.remove("Hip-Hop")) // Возвращает nil если результата нет. Или элемент если есть.

print(myMusicStyleSet.remove("Classic")) // nil

print(myMusicStyleSet.contains("Rock")) // true
print(myMusicStyleSet.count) // 2

myMusicStyleSet.removeAll()
print(myMusicStyleSet)