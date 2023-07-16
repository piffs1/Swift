// Функция с переменным числом значений. 
func printRequestString(codes: Int...) -> Void { //codes:Int... ТИП ВХОДНОГО ПАРАМЕТРА -> ВАРИАТИВНЫЙ!!!
    // У одной функции может быть ТОЛЬКО ОДИН ВАРИАТИВНЫЙ ПАРАМЕТР!!! 
    // И СТОЯТЬ он ДОЛЖЕН В КОНЦЕ!!!
    // А как с параметрами?
    var codesString = ""
    print("type of codesString is \(type(of:codesString))") // type of codesString is String
    for code in codes {
        codesString += String(code) + " " // Почему при приведении через String(code) - у нас возврат String, а не Optional<String>???
                                          // Ведь у нас может не быть значения? 
                                          // Или у инта всегда привести значение к String... 
                                          // А в другую сторону с трудом? Точно. String к Int опционалам. 
                                          // Тогда логика понятна. Int в String мы всегда можем перевести.
                                          // А String в Int, Float, Double и тд не всегда...

                                          // Нужно понять философию такого подхода.
    }

    print("type of Int(\"12\") is \(type(of:Int("12")))") // Optional<Int>
    print("type of String(12) is \(type(of:String(12)))") // Strubg
    print("Получены ответы - \(codesString)")

}