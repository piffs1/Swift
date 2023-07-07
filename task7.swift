// Сокращение количества пробелов до одного
// Написать функцию, которая принимает строку как свой единственный параметр
// и возвращает ту же самую строку только с замененными множественными пробелами
// на единичный пробел (например строка "[space][space][space]a"
// вернется в виде "[space]a")

func spaces(input: String) -> String {
    //var strResult = [Character]()
    var returnValue = ""
    var spaceCatched: Bool = false

    for letter in input {
        if letter == " " {
            if (spaceCatched) {continue} 
            else {
                spaceCatched = true   
            }
        } else {
            spaceCatched = false
        }
        returnValue.append(letter)
        //strResult.append(letter)
    }
    return returnValue
    //return String(strResult)
}

print(spaces(input:"S    SCV  V")) // S SCV V