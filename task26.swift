// Повторение чисел в коллекции

// пример [5,15,55,515].repetition(digit: "5") -> 6. Напишем кастомную функцию

extension Collection where Iterator.Element == Int {
    func repetition(digit: Character) -> Int {
        var total = 0

        for item in self {

            let str = String(item)
            
            for letter in str {
                if letter == digit {
                    total += 1
                }
            }
        }

        return total
    }
}

print([5,15,55,515].repetition(digit: "5")) // 6