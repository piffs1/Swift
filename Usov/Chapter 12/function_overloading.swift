
func say(what: String) -> Void {}
func say(what: Int) -> Void {}
// Это ок. Понятно... А это?!


func cry() -> String {
    return "one"
}
func cry() -> Int {
    return 1
}

// ВАЖНОЕ ЗАМЕЧАНИЕ! Возвращаемое значение функции не может быть передано
// переменной или константе БЕЗ ЯВНОГО указания типа.
// let resultOfFunc = cry()
/*
    main.swift:16:20: error: ambiguous use of 'cry()'
    let resultOfFunc = cry()
                       ^
    main.swift:7:6: note: found this candidate
    func cry() -> String {
         ^
    main.swift:10:6: note: found this candidate
    func cry() -> Int {
         ^
*/


let resultString: String = cry()
let resultInt: = cry() + 100 // Сработает!

