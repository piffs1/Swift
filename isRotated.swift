// Вращение строки
// Написать функцию, которая принимает две строки и возвращает bool 
// в зависимости от является ли одна строка вращением другой(с учетом регистра)
// пример swift -> ftswi. Hello -> lloHe

import Foundation

func isVrashenie(input: String, rotated: String) -> Bool {
    // Взял бы первый элемент второй строки str2[0]
    // Потом пошел бы искать по первой строке до firstIndex
    // Потом цикл от индекса до конца. С сохранением итерации 
    // Потом цикл с нуля во второй строке и вторая строка плюс итерация в первой.
    // Если доходит до конца true
    guard input.count == rotated.count else {return false}
    let combined = input + input
    return combined.contains(rotated) // Очень умно...
}

// func isRotated(_ str: String, from: String) -> Bool {
//     return str.count == from.count && (str + str).contains(from)
// }

print(isRotated("Hello", from: "lloHe"))

print(isVrashenie(input: "Hello",  rotated: "lloHe"))