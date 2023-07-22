//СВОЙСТВА И МЕТОДЫ В ПЕРЕЧИСЛЕНИЯХ!

enum SmilesX: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"

    // properties. Свойства всегда должны быть var и работать с лямбдой! при let будет ошибка!
    var description : String {return self.rawValue}
    func about() {
        print("Перечисление содержит список смайликов")
    }

    func descriptionValue() -> SmilesX {
        return self
    }
    func descriptionRawValue() -> String {
        return self.rawValue // или return rawValue
    }

}

let x: SmilesX = .joy
print(x.description) // :)
x.about() // Перечисление содержит список смайликов
print(x.descriptionValue() == x) // joy == x == true LOL
print(x.descriptionRawValue()) // :)



// Моя мюсль. Вызвать SmilesX.about() отдельно нельзя, потому что объект ещё не создан, верно? Некуда сослаться просто