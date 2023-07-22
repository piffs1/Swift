/*
       Symbol    Value
        I          1
        V          5
        X          10
        L          50
        C          100
        D          500
        M          1,000
        XCTAssertEqual(solution("I"), 1)
        XCTAssertEqual(solution("II"), 2)
        XCTAssertEqual(solution("III"), 3)
        XCTAssertEqual(solution("IV"), 4)
        XCTAssertEqual(solution("V"), 5)
        XCTAssertEqual(solution("VI"), 6)
        XCTAssertEqual(solution("VII"), 7)
        XCTAssertEqual(solution("VIII"), 8)
        XCTAssertEqual(solution("IX"), 9)
        XCTAssertEqual(solution("X"), 10)
        XCTAssertEqual(solution("C"), 100)
        XCTAssertEqual(solution("CDXLIV"), 444)
        XCTAssertEqual(solution("M"), 1000)
        XCTAssertEqual(solution("MCMLIV"), 1954)
        XCTAssertEqual(solution("MCMXC"), 1990)
        XCTAssertEqual(solution("MCMXCIX"), 1999)
        XCTAssertEqual(solution("MM"), 2000)
        XCTAssertEqual(solution("MMVIII"), 2008)
        XCTAssertEqual(solution("MMM"), 3000)
        XCTAssertEqual(solution("MMMCM"), 3900)
        XCTAssertEqual(solution("MMMCMXIV"), 3914)

*/

/*
func value(of numeral: Character) -> Int? {
    switch numeral {
    case "I": return 1
    case "V": return 5
    case "X": return 10
    case "L": return 50
    case "C": return 100
    case "D": return 500
    case "M": return 1000
    default: return nil
    }
}

func solution(_ string: String) -> Int {
    let numerals = string.characters.flatMap(value)
    let sum = numerals.reduce(0, +)
    
    let difference = zip(numerals, numerals.dropFirst())
        .filter(<)
        .map { $0.0 }
        .reduce(0, +)
    
    return sum - difference * 2
}


import Foundation

func solution(_ string:String) -> Int {
  return string
    .replacingOccurrences(of: "CM", with: "DCD")
    .replacingOccurrences(of: "M", with: "DD")
    .replacingOccurrences(of: "CD", with: "CCCC")
    .replacingOccurrences(of: "D", with: "CCCCC")
    .replacingOccurrences(of: "XC", with: "LXL")
    .replacingOccurrences(of: "C", with: "LL")
    .replacingOccurrences(of: "XL", with: "XXXX")
    .replacingOccurrences(of: "L", with: "XXXXX")
    .replacingOccurrences(of: "IX", with: "VIV")
    .replacingOccurrences(of: "X", with: "VV")
    .replacingOccurrences(of: "IV", with: "IIII")
    .replacingOccurrences(of: "V", with: "IIIII")
    .characters.count
}

import Foundation

func solution(_ string:String) -> Int {
    let table: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var p = 0
    let transform: (Character) -> Int = {
        let result = table[$0]!
        if result > p { p = result }
        return result < p ? -result : result
    }
    return string.characters.reversed().map(transform).reduce(0, +)
}

*/


import Foundation

func solution(_ string:String) -> Int {
  let arrStr: Array<Character> = Array(string)
  let dict: Dictionary<Character,Int> = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]

  var i = 0
  var result = 0
  while (i < arrStr.count-1) {
    let curVal = dict[arrStr[i]]
    let nextVal = dict[arrStr[i+1]]
    if (curVal! < nextVal!) {
      result += nextVal! - curVal!
      i+=2
    } else {
      result += curVal!
      i+=1
    }
  }
  if (i == arrStr.count-1) {
      result += dict[arrStr[i]]!
  }
  return result
  
}