class Person {

    var firstName = "Name"
    var secondName = "Surname"
    lazy var wholeName: String = self.generateWholeName() // lazy-by-need
    init(firstName: String, secondName: String) {
        (self.firstName, self.secondName) = (firstName, secondName)
    }

    func generateWholeName() -> String {
        return firstName + " " + secondName
    }
}


var me = Person(firstName:"Nikitosik", secondName:"Roflerov")
print(me.wholeName) // Nikitosik Roflerov
print(type(of:me.wholeName)) // String
me.secondName = "Instasamkov"
print(me.wholeName) // Nikitosik Roflerov

//Нюансик возник конечно. Один раз оно выполнилось в отложенной инициализации и усе.
//Есть два варианта решения: 1. Отедльную функцию заубенить
//                           2. Сделать тип не String, а замыкание возвращающее String


class PersonWithClosure {

    var firstName = "Name"
    var secondName = "Surname"
    lazy var wholeName: ()->String = { return self.generateWholeName() } // lazy-by-name
    // Вычисляемое свойство. Хранится только в var!
    var wholeName_Leonidovich: String { return "\(self.firstName) \(self.secondName) Leonidovich" }
    //Без self будет ошибка: error: call to method 'generateWholeName' in closure requires explicit use of 'self' to make capture semantics explicit
    init(firstName: String, secondName: String) {
        (self.firstName, self.secondName) = (firstName, secondName)
    }

    func generateWholeName() -> String {
        return firstName + " " + secondName
    }
}

var me1 = PersonWithClosure(firstName:"Nikitosik", secondName:"Roflerov")
me1.wholeName() // Nikitosik Roflerov
print(me1.wholeName_Leonidovich) // Nikitosik Roflerov Leonidovich
me1.secondName = "Instasamkov"
print(me1.wholeName()) // Nikitosik Instasamkov
print(me1.wholeName_Leonidovich) //Nikitosik Instasamkov Leonidovich

