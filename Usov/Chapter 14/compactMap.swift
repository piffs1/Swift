//compactMap -> Если преобразование невозможно. Пропустит его.
//В отличии от map, которое вернёт nil

let stringArray = ["1", "2", "3", "four", "5"]
print(stringArray.map{Int($0)}) // [Optional(1), Optional(2), Optional(3), nil, Optional(5)]
print(stringArray.compactMap{Int($0)}) // [1, 2, 3, 5]
