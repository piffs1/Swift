// Вывести числа делящиеся на 3, 5 или вместе
// При делении на 3 Three, на 5 Five, На 3 и 5 Three Five

var result = ""
for i in 1...100 {
    result = ""
    if (i % 3 == 0) {
        result += "Three"
    }

    if (i % 5 == 0) {
        result += "Five"
    }

    print(result)
}