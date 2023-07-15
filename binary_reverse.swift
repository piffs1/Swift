// Бинарный переворот

// Есть число Uint. Перевернуть бинарно

func binaryReverse(_ number: UInt) -> UInt {
    let binary = String(number, radix: 2) // case 256: 1_0000_0000 без подчеркиваний.
    //print("Binary is \(binary)")
    let notEnoughNumbers = 8 - binary.count % 8 // 256 -> 
    //print("binary.count is \(binary.count) and notEnoughNumers is \(notEnoughNumbers)")
    let fullBinary = String(repeating: "0", count: notEnoughNumbers) + binary
    //print("fullBinary looks like \t\t\(fullBinary)")
    let reversedBinary = String(fullBinary.reversed())
    //print("revesedBinary looks like \t\(reversedBinary)")
    return UInt(reversedBinary, radix: 2)!
}

print(binaryReverse(13)) ///128
/*
    Binary is 1101
    binary.count is 4 and notEnoughNumers is 4
    fullBinary looks like 		00001101
    revesedBinary looks like 	10110000
    result is: 176
*/

print(binaryReverse(256))

/*
    Binary is 100000000
    binary.count is 9 and notEnoughNumers is 7
    fullBinary looks like 		0000000100000000
    revesedBinary looks like 	0000000010000000
    Result is: 128
*/

print(binaryReverse(1))

/*
    Binary is 1
    binary.count is 1 and notEnoughNumers is 7
    fullBinary looks like 		00000001
    revesedBinary looks like 	10000000
    result is: 128
*/
