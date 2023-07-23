// ЗАПОМНИ ПРИНЦИП! 
// После того, как будет создан экземпляр структуры, все ее свойства должны иметь значения
// Структуры - value-type. При передаче экземпляра структуры от одного параметра в другой происходит его копирование.
struct ChessPlayer {
    var name: String = "Player"
    var victories: UInt = 0
    // Если сделать инициализатор по умолчанию и у него не будет проинициализированного свойства, то лови ошибку:
    // error: return from initializer without initializing all stored properties
    init (name: String) {
        self.name = name // Все как в плюсах...
    }
    func description() {
        print("Игрок \(name) имеет \(victories) побед")
    }
    // По умолчанию методы структур(кроме инициализаторов) не могут изменять значения свойств в структуре.
    // Для изменений необходим модификатор mutating
    mutating func addVictories( count: UInt = 1) {
        victories += count
    }
}

var andrusha = ChessPlayer(name: "Andrew")
print(andrusha.name) //Andrew
andrusha.description() //Игрок Andrew имеет 0 побед
andrusha.addVictories()
andrusha.description() // Игрок Andrew имеет 1 побед


