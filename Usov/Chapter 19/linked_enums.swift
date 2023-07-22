enum Smiles: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
}

enum Planet : Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto = 999
}
//Перечисления как в плюсах, идут с нуля и +1 постоянно. Можно так же добавить исходное значение.
// Если присвоить case mercury, venus=4, earth, mars, jupiter, saturn, uranus, neptune, pluto =999
//    то(rawValue) будет 0         4       5     6      7        8        9       10      999

print(iAmHappy.rawValue) // :). without rawValue = joy

let myPlanet = Planet.init(rawValue: 3)
print(myPlanet) // Optional(SwiftPlayground.Planet.mars)
let anotherPlanet = Planet.init(rawValue: 100)
print(anotherPlanet) // nil