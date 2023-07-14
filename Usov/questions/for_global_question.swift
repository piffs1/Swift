var myChar = "a"
let myString = "Swift"

for myChar in myString {
    print(myString) // Почему здесь он обратился к myString ^
    let myString = "Char is "
    print(myString) // А здесь уже к локальной?
    // Т.е. Пока у меня в цикле не объявлены одноименные переменные, он обращается к глобальным.
    // Как только объявил одноименную глобальную в цилке for-in, то он уже обращается к локальной?
    //print("\(myString) \(myChar)")
}

print("\(myChar) \(myString)")