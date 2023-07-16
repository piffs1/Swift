//Значение по умолчанию!
func returnMessage(code: Int, message: String = "Код - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

// refactor returnMEssage...
func returnMessageX(code: Int, message: String = "Код - ") -> String {
    message + String(code) // Почему это работает??? [Не выбрасывается ошибка об отсутствии return?!]
}

print(returnMessageX(code: 42, codes: 100,200,300, message: "Privet - ")) // Privet - 42

// refactor returnMEssage...
func returnMessageX2(code: Int, message: String = "Код - ",  codes: Int...) -> String {
    message + String(code) +  " " + String(codes[0]) 
}

// Не важно в каком порядке стоит ВАРИАТИВНЫЙ и ПО УМОЛЧАНИЮ аргумент? 
// Главное что в конце?

print(returnMessageX2(code: 42, message: "Hello Pacani - ", codes: 100,200,300)) // Hello Pacani - 42 100