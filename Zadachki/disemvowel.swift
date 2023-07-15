/*
    Удалить все гласные из строки, кроме Y и y
        XCTAssertEqual("Ths wbst s fr lsrs LL!", disemvowel("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))
*/
/*

func disemvowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}

func disemvowel(_ s: String) -> String {
  let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  
  return String(s.characters.filter { !vowels.contains($0) })
}

*/

func disemvowel(_ s: String) -> String {
  let vowels = "AEIOUaeiou" // Yy removed
  var result = ""
  for letter in s {
    if (!vowels.contains(letter)) {
      result.append(letter)  
    }
  }
  
  return result  
}

