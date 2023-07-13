/* 

Write function bmi that calculates body mass index (bmi = weight / height2).

if bmi <= 18.5 return "Underweight"

if bmi <= 25.0 return "Normal"

if bmi <= 30.0 return "Overweight"

if bmi > 30 return "Obese"

func bmi(_ weight: Int, _ height: Double) -> String {
    switch Double(weight)/pow(height, 2) {
      case ...18.5: return "Underweight"
      case ...25.0: return "Normal"
      case ...30.0: return "Overweight"
      default: return "Obese"
    }
}

*/


func bmi(_ weight: Int, _ height: Double) -> String {
    // switch как в плюсах? Идет вниз? Нужен ли break?
    let bmi = Double(weight)/(height * height)
    switch(bmi) {
      case ...18.5:
        return "Underweight"
      case 18.5...25.0:
        return "Normal"
      case 25.0...30.0:
        return "Overweight"
      default:
        return "Obese"
    }
}

print(bmi(71,176))
