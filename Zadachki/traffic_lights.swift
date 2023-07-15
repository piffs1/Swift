// Простейшая задача. Логика изменения цветов табло светофора


/*
enum Light: String {
    case green, yellow, red
}

func update_light(_ current: String) -> String {
    guard let light = Light(rawValue: current) else { return "" }
    let next: Light
    switch light {
    case .green: next = .yellow
    case .yellow: next = .red
    case .red: next = .green
    }
    return next.rawValue
}

func update_light(_ current: String) -> String? {
    let lights: [String: String] = ["green": "yellow", "yellow": "red", "red": "green"]
    return lights[current]
}

*/

// my solution
func update_light(_ current: String) -> String {
  switch current {
    case "green":
        return "yellow"
    case "yellow":
        return "red"
    case "red":
        return "green"
    default:
        return "bad input"
    }
}