import Foundation

func pref(_ input: String) -> String {
    let parts = input.components(separatedBy: " ") /// Аналог .split python
    guard let first  = parts.first else {return false}

    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)

        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }

    return bestPrefix

} 
