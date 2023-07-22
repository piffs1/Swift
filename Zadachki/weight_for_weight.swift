/* Description
My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.

Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?
Example:

"56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

"100 180 90 56 65 74 68 86 99"

When two numbers have the same "weight", let us class them as if they were strings (alphabetical ordering) and not numbers:

180 is before 90 since, having the same "weight" (9), it comes before as a string.

All numbers in the list are positive numbers and the list can be empty.
Notes

    it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers
    For C: The result is freed.

TESTS:

        testing("103 123 4444 99 2000", "2000 103 123 4444 99")
        testing("2000 10003 1234000 44444444 9999 11 11 22 123", "11 11 2000 10003 22 123 1234000 44444444 9999")
        testing("", "")
        testing("10003 1234000 44444444 9999 2000 123456789", "2000 10003 1234000 44444444 9999 123456789")
    }


@ СВОИМИ СЛОВАМИ:
    Числа формируют индекс. 103 - 4, 123 - 6 и тд
    Нужно и отсортировать в таком порядке.
    Если есть случай 180 - 9, 90 - 9, сортировать в лексиграфическом порядке.
*/

// Мое первое решение. 
// Горжусь что зашел на пятый уровень конечно...) Но можно покрасивей, ща попробую
func orderWeight(_ s: String) -> String {
    // your code
  let parts = s.components(separatedBy: " ")
  let sortedParts = parts.sorted(by: {(first: String, second: String) -> Bool in
    var valFirst: Int = 0
    for letter in first {
        valFirst += Int(String(letter))!
    }
    var valSecond = 0
    for letter in second {
        valSecond += Int(String(letter))!
    }
    if (valFirst == valSecond) {
        return first < second
    }
    return valFirst < valSecond
  })
  return sortedParts.joined(separator: " ")
}

// ВОТ ЭЛЕГАНТНОЕ РЕШЕНИЕ!!!
func orderWeight1(_ s: String) -> String {
  return s.components(separatedBy: " ").sorted { 
    let lhs = $0.compactMap{ Int(String($0)) }.reduce(0, +)
    let rhs = $1.compactMap{ Int(String($0)) }.reduce(0, +)
    return lhs == rhs ? $0 < $1 : lhs < rhs
  }.joined(separator: " ")
}

// Мои фиксы ЧИСТО ДЛЯ МЕНЯ! ЧТОБЫ БЫЛО ПОНИМАЕНИЕ! lhs = $0 - String. А ПОТОМ УЖЕ РАБОТАЕМ с $0 Character!!!
// compactMap в этом случае необходим для того, чтобы не возиться с оцпионалами.
// метод map вернет optional(int)
func orderWeight2(_ s: String) -> String {
  return s.components(separatedBy: " ").sorted { (first: String, second: String) -> Bool in
    let lhs = first.compactMap{ Int(String($0)) }.reduce(0, +) 
    let rhs = second.compactMap{ Int(String($0)) }.reduce(0, +)
    return lhs == rhs ? first < second : lhs < rhs
  }.joined(separator: " ")
}
