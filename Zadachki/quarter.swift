// На вход поступает число от 1 до 12.
// Определить к какому кварталу относится месяц. 
// В интернете картинки кварталов

func quarter(of month: Int) -> Int {
  switch month {
    case 1...3: return 1
    case 4...6: return 2
    case 6...9: return 3
    case 10...12: return 4
    default : return -1 // Надо по идее exception. НО я не дошел ещё до них :DDDD
  }
}

print(quarter(of:4))