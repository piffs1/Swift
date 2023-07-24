//Classes. Ссылочный тип! 

class Chessman {

    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }

    enum ChessmanColor {
        case black
        case white
    }

    //type of figure
    let type: ChessmanType
    //figure's color
    let color: ChessmanColor
    //coords
    var coordinates: (String, Int)? = nil
    // figure symbol
    let figureSymbol : Character
    // Класс может содержать произвольное количество разработанных инициаилизаторов, различающихся
    // лишь набором входных аргументов
    init (type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        figureSymbol = figure //self не используется, потому что аргумент(figure) различен с внутренней переменной(figureSymbol)
    }

    init(type: ChessmanType, color: ChessmanColor, figure: Character, 
    coordinates: (String, Int)) {
        self.type = type
        self.color = color
        figureSymbol = figure
        setCoordinates(char: coordinates.0, num: coordinates.1)
    }

    func setCoordinates(char c:String, num n: Int) {
        coordinates = (c, n)
    }

    func kill() {
        coordinates = nil
    }

}

var kingWhite = Chessman(type: .king, color: .white, figure: "\u{2654}")
kingWhite.setCoordinates(char: "E", num: 1)

var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{2655}", coordinates: ("A", 6))
print(queenBlack) // SwiftPlayground.Chessman
print(type(of:queenBlack)) // Chessman

//Обращение к вложенному типу в классе
let linkToEnumValue = Chessman.ChessmanType.bishop 
print(type(of:linkToEnumValue)) // ChessmanType


//Класс может менять свои свойства, даже будучи константным, ну ща мы это проверим. КОРОЧЕ РАБОТАЕТ
let knightWhite = Chessman(type: .knight, color: .white, figure: "🌟") // DA DA DA YA NE NASHEL! :D
knightWhite.setCoordinates(char: "B", num: 2)
knightWhite.coordinates = ("C", 2)
print(knightWhite.coordinates) // Optional(("C", 2)) WTF????!


