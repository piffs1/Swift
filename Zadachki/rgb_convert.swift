
import Foundation

struct RGB: CustomStringConvertible, Equatable {
    var r:Int
    var g:Int
    var b:Int
    init(_ r:Int, _ g:Int, _ b:Int) {
        self.r = r
        self.g = g
        self.b = b
    }
    static func ==(left:RGB, right:RGB) -> Bool {
        return left.r == right.r && left.g == right.g && left.b == right.b
    }
    var description: String {
        return "{R:\(r), G:\(g), B:\(b)}"
    }
}



func hexStringToRGB(_ str:String) -> RGB {
  
  let r_startIndex = str.index(str.startIndex, offsetBy: 1)
  let r_endIndex = str.index(r_startIndex, offsetBy: 1)

  let g_startIndex = str.index(after:r_endIndex)
  let g_endIndex = str.index(g_startIndex, offsetBy: 1)
  
  let b_startIndex = str.index(after:g_endIndex)
  let b_endIndex = str.index(before:str.endIndex)
  
  let r = Int(str[r_startIndex...r_endIndex], radix: 16)!
  let g = Int(str[g_startIndex...g_endIndex], radix: 16)!
  let b = Int(str[b_startIndex...b_endIndex], radix: 16)!
  
  print(r,g,b)
   
  return RGB(r,g,b)
}

//Альтернативное решение


func hexStringToRGB2(_ str: String) -> RGB {
    let nums = Array(str.dropFirst())
    let r = Int(String(nums[...1]), radix: 16)!
    let g = Int(String(nums[2...3]), radix: 16)!
    let b = Int(String(nums[4...5]), radix: 16)!

    return RGB(r, g, b)
}

// Hexadecimal number 
hexStringToRGB("#FF9933")
