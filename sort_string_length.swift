// Сортировка массива по длине
// Написать расширение для коллекций, возвращающее массив строк,
// Отсортированный по длине. Более длинные строки впереди. 
// ["a", "ab", "aac"].stringSort() -> ["aac", "ab", "a"]

extension Collection where Iterator.Element == String {
    func stringSort() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}


let a = ["a", "abc", "abcd"]
print(a.stringSort()) ///["abcd", "abc", "a"]