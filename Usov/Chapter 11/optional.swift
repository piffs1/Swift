// nil - отсутствие значения. НЕ 0, не "", ИМЕННО NIL. ОТСУТСТВИЕ
let possibleString = "1945"
let convertPossibleString = Int(possibleString)

print(type(of:convertPossibleString)) // Optional<Int>

let unpossibleString = "ODIN"
let convertUnpossibleString = Int(unpossibleString)

print(type(of:convertUnpossibleString)) // Optional<Int>0

// Для объявления опционального типа, необходимо ЯВНО задать его тип

let optChar: Optional<Character> = "a" // : Character?

// Если объявить переменную и не инициализировать её, она будет nil. Логично, вродь.
var someOpt: Bool?
print(someOpt)

// Optional in tuples
var tuple: (code: Int, message: String)? = nil
print(type(of:tuple)) // Optional<(code: Int, message: String)>

// Нельзя проводить прямые операции между опциональным и базовым типом данных!
// FORCE UNWRAPPING! Принудительное извлечение
var optVar : Int? = 12
var intVar = 34
let result = optVar! + 34 
// !!! Нужно проверять на nil, иначе будет краш!
print(type(of:result)) // Int

// IMPLICITY UNWRAPPING! Косвенное извлечение
// Если вы уверены, что значение ВСЕГДА будет, то
var wrapInt: Double! = 3.14
wrapInt + 0.12 // Все будет. Ок.
wrapInt = nil // При занулении все ещё ок
//wrapInt + 0.12 // Но как только сложил, смэрть пришла незамедлительно =(
wrapInt != nil ? print("wrapInt isn't  nil") : print("wrapInt is nil")

//Optional linking?
var userLogin: String? = nil
if let userName = userLogin {
    print("Имя: \(userName)")
} else {
    print("Имя не введено!")
}

userLogin = "Login"

if let userName = userLogin {
    print(type(of:userName)) // String
    print("Имя: \(userName)")
} else {
    print("Имя не введено!")
}
// Опциональное связывание удобное. Если в if let userName = userLogin(nil)
// то он бросит в else, потому что опицонал пустой. Прикольно!
// Если опционал не пустой, он создаст копию базового типа(не опциональную)
// и она будет локальной. Унитожится после!

var pointX: Int? = 10
var pointY: Int? = 3
let vkusno: Bool = true
if let x = pointX, let y = pointY {
    print("Точка установлена на плоскости") // ok. x,y will be setted
}
// Сложненький опционал, по логике работающий слева-направо
if let x = pointX, vkusno, x > 5 {
    print("Вкусно и точка") // ok
}
// nil coalescing!

let optionalInt: Int? = 20
var mustHaveResult = optionalInt ?? 0 // 20.
print(type(of:mustHaveResult)) // Int
// Если optionalInt был бы nil, присвоилось бы значение после ??
// Если optionalInt не nil, присваивается необходимое значение. 
// Эквивалент кода:
mustHaveResult = 0
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}
// Наиболее безопасная работа с опционалами - это
// nil coalescing (value = optValue ?? (nil-situation))
// опциональное связывание if let unwrapped = optionaLVal