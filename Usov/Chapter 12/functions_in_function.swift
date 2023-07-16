func oneStep(
    coordinates: inout (Int, Int), // Передача по ссылке    
    stepType: String
) -> Void {
    func up( coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 + 1)
    }
    func down( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 - 1)
    }
    
    switch stepType {
        case "up":
            up(coords: &coordinates)
        case "right":
            right(coords: &coordinates)
        case "down":
            down(coords: &coordinates)
        case "left":
            left(coords: &coordinates)
        default:
            break
    }
    
}

var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")
print(coordinates) // (11, -4)


