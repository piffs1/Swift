// lazy-by-name

var arrayOfNames = ["Nikita", "Boris", "Felix", "Leonard"]
print(arrayOfNames.count) //4
let nextName = {(_ a:Int) -> String in  arrayOfNames.remove(at: a) }

print(type(of:nextName)) // (Int) -> String
print(arrayOfNames.count) // 4
print(nextName(0)) // Nikita
print(arrayOfNames.count) // 3