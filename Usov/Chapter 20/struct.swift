// Структуры. Структура описывает сущность
// Свойства структур могут быть как var, так и let
// @QUESTION: А  присваиваются свойства как обычно? Лет единожды? Можно создавать пустое свойство и потом ему присвоить?
// @ANSWER 2:3: error: cannot assign to property: 'val' is a 'let' constant

struct ChessPlayer {
    let name: String = "Игрок" // Задание свойств по умолчанию. Можно сделать let player = ChessPlayer()
    var victories: UInt = 0
}

// Если пропустить параметр (пример)
// var playerHarry = ChessPlayer.init(name: "Harry Shproter")
// то  будет ошибка error: missing argument for parameter 'victories' in call

var playerHarry = ChessPlayer.init(name: "Harry Shproter", victories: 36)
// или 
let playerHarry2 = ChessPlayer(name: "Harry Shproter", victories: 36)



print(playerHarry) // ChessPlayer(name: "Harry Shproter", victories: 36)
//playerHarry.name = "ROFL" //ote: change 'let' to 'var' to make it mutable
    //let name: String
    //^~~
playerHarry.victories = 12 // ok

