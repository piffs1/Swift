// Написать собственный firstIndex(of: )

extension Collection where Iterator.Element: Equatable {
    func recreate(firstIndexOf search: Iterator.Element) -> Int? {
        
        for (index, item) in self.enumerated() {
            if item == search {
                return index
            }
        }
        return nil
    }
}


let a = ["abc","cba","bca", "bca"]

print(a.recreate(firstIndexOf: "abc")) // Optional(0)
print(a.recreate(firstIndexOf: "abc))")) // nil
