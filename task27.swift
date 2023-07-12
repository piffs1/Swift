// Сортировки коллекции по возрастанию до N

// Написать расширение коллекций, возвращающее N наименьших элементов
// отсортированных по возрастанию, где N имеет тип данных Int
// Пример [1, 4, 3, 2].sortUpToN вернет [1, 2, 3] если N = 3.

extension Collection where Iterator.Element: Comparable {
    func sortUpToN(number: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(number))
    }
}

let a = [1, 3, 2, 5, 4]
print(a.sortUpToN(number: 4)) // [1, 2, 3, 4]


let b = ["a", "f", "b", "z"] // ["a", "b", "f", "z"]
print(b.sortUpToN(number: 5))
