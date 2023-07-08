// Функция генерирует рандомное число в диапазоне min..max

func rand(min: Int, max: Int) -> Int {
  return Int.random(in: min...max)
}

print(rand(min: 0, max: 5))