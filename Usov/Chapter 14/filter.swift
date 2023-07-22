// Фильтрация коллекции.

let numArray = [1, 4, 10, 15]
let even = numArray.filter{ $0 % 2 == 0 }
print(even) // [4, 10]

// Можно работать и с другими типами коллекций

let pacani = ["Nikitos": 25, "Boriska" : 28, "Felix": 4, "Leonard": 96]
let vzroslieMujiki = pacani.filter{$0.value > 18}
print(vzroslieMujiki) // ["Boriska": 28, "Leonard": 96, "Nikitos": 25]