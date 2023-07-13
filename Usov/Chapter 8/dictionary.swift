var dict = ["one":"один", "two":"два"] //Dictionary<String, String>

//var dict1 : Dictionary(dictionaryLiteral: (1,2))

//Создание при помощи Dictionary(uniqueKeysWithValues:)
let baseCollection = [(2,5), (3,6), (1,4)]
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection) //Dictionary<Int, Int>

//Создание на базе двух последовательностей
let veshi4ki = ["Semki", "Pivo", "Vodochka"]
let price: [Float] = [80.5, 66, 420]

let dictThings = Dictionary(uniqueKeysWithValues: zip(veshi4ki, price)) //Dictionary<String, Float>

print(dictThings) // ["Pivo": 66.0, "Semki": 80.5, "Vodochka": 420.0]

// Явное определение словаря
let dictOne: Dictionary<Int, Bool> = [100:false, 200: true, 400: true] // Dictionary<Int, Bool>
var dictTwo: [String:String] = ["Nikita" : "Lednev", "Boriska" : "The Cat"] // Dictionary<String, String>
// Обновление значений словаря
// При изменении значений словаря, изымается старый элемент И вставляется обновленный. 

var oldValueOne = dictTwo.updateValue("Prikolov", forKey: "Nikita")
print(oldValueOne) // Optional("Lednev")

// В случае, если обновляемый элемент не существовал, метод возвращает nil
var oldValueNil = dictTwo.updateValue("Bu", forKey: "Dmitry")
print(oldValueNil) // nil

// Для создания элемента необходимо обратиться к несуществующему элементу и передать значение(как в плюсах короче...)

dictTwo["Killrill"] = "MATIZ" 
print(dictTwo) // ["Boriska": "The Cat", "Dmitry": "Bu", "Killrill": "MATIZ", "Nikita": "Prikolov"]

// Удаление элементов
dictTwo["Killrill"] = nil // Можно присвоить nil для удаления
//["Boriska": "The Cat", "Nikita": "Prikolov", "Dmitry": "Bu"]

//Можно явно удалить
let removedValue = dictTwo.removeValue(forKey: "Dmitry") // Optional("Bu")
// ["Nikita": "Prikolov", "Boriska": "The Cat"]

//!!! ВАЖНО!!! 
// Если обратиться к несуществующему элементу в словаре, Swift не выбросит исключение
// Он вернет nil. Важно проверять значение на nil ! Иначе будут ошибки!!!!!!!!!!!!!!
print(dictTwo["Prikoldesik"]) // nil

// Создание пустого словаря
let emptyDictionary : [String: Int] = [:]
let anotherEmptyDictionary = Dictionary<String,Int>()

// Создание сложного словаря
var birthYears = [1991: ["Boriska", "Dmitry Bu", "Mafiozi Kitayoza"], 1998: ["Abu bandit", "Don Baton"]] // Dictionary<Int, Array<String>>
//var birthYears: [Int: [String]] = [:]
// Уничтожить все элементы словаря
birthYears = [:]
print(birthYears) // [:]

// Свойства и методы словарей
var someDictionary = ["One": 1, "Two": 2, "Three": 3]
print(someDictionary.count) // 3 
print(someDictionary.isEmpty) // false
// СТР. 176
let keys = someDictionary.keys // Keys (TYPE. LOL!)
print(keys) // ["Three", "Two", "One"]
let values = someDictionary.values //Values (TYPE. LOL!). 
print(values) // [3, 2, 1]


