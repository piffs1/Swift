// Безымянная функция возвращающая true

let firstClosureFunc =  {return true} // type: () -> Bool
print(firstClosureFunc())

// Предположим есть массив с банкнотами номиналом 10,50,100,500,1000,5000 в любом количестве
let wallet = [10, 50, 100, 100, 1000, 50, 5000]
//Необходима функция, которая подсчитывает сколько сотен в кошельке, сколько купюр больше 1000 и возвращает массив этих купюр 
//Это две разные функции тогда можно 
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if (closure(banknote)) {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

func compare100(banknote: Int) -> Bool {
    return banknote == 100
}

func compareMore1000(banknote: Int) -> Bool {
    return banknote >= 1000
}


let resultBanknote100 = handle(wallet: wallet, closure: compare100) // [100, 100]
let resultBanknoteMore100 = handle(wallet: wallet, closure: compareMore1000) // [1000, 5000]

//По меру возрастания кода и требований. Функции компараторы могут разрастаться
//В этом случае есть замыкания(лямбды как в С++), тот же самый пример:

print(handle(wallet:wallet, closure: { (banknote: Int) -> Bool in // [1000, 5000]
    return banknote >= 1000
}))

print(handle(wallet:wallet, closure: { (banknote: Int) -> Bool in  // [100, 100]
    return banknote == 100
}))

//Неявное указание, но тут хз. Мне больше нравится явное указание...
print(handle(wallet: wallet, closure: { banknote in // [1000, 5000]
    return banknote >= 1000
}))

// Неявное возвращение значения. 
// ЕСЛИ ТЕЛО ЗАМЫКАЮЩЕГО ОПЕРАТОРА СОДЕРЖИТ ВСЕГО ОДНО ВЫРАЖЕНИЕ, КОТОРОЕ ВОЗВРАЩАЕТ НЕКОТОРОЕ ЗНАЧЕНИЕ
// ТО ТАКИЕ ЗАМЫКАНИЯ МОГУТ НЕЯВНО ВОЗВРАЩАТЬ ВЫХОДНОЕ ЗНАЧЕНИЕ.
// Звучит отстойно.
print(handle(wallet: wallet, closure: {banknote in banknote >= 1000})) // Даже warning не будет. ну пипец...

// Сокращенные имена ОПЕРАТОРОВ
// ДЛЯ ДОСТУПА К 1 АРГУМЕНТУ -> $0
// ДЛЯ ДОСТУПА КО 2 АРГУМЕНТУ -> $1
// ДЛЯ ДОСТУПА К 3 АРГУМЕНТУ -> $2

print(handle(wallet: wallet, closure: {$0 == 50})) /// [50,50]

// Вынос замыкания за скобки. 
// Если closure расположен последним в списке входных параметров, 
// То можно сделать вынос замыкания за скобки.
// Пока что вообще не прочувствовал...
handle(wallet: wallet) { $0 >= 1000 }
// Расширим функцию

handle(wallet: wallet) { banknote in 
    for number in Array(arrayLiteral: 100, 500) {
        if (number == banknote) {
            return true
        }
    }
    return false
}

// Или такой вариант
let successBanknotes = handle(wallet:wallet) { [100,500].contains($0) } // [100, 100]. Выглядит покрасивей, а если...
let successBanknotes1 = handle(wallet:wallet) { banknote in [100,500].contains(banknote) } // [100, 100]. Результат аналогичный

// Объявление лямбды

let closure: () -> Void = {
    print("Замыкающее выражение")
}
closure() // type: () -> (). Не принимает значений и возвращает ничего!

// С аргументом

let closureHelloString1: (String) -> Void = { // или text in 
    print("Hello " + $0)         
}

let closureHelloString2: (String) -> Void = { text in 
    print("Hello " + text)
}

closureHelloString1("World!") // Hello World!
closureHelloString2("World2!") // Hello World2!

let closureSum: (_ a: Int,_ b: Int) -> Int = { // _ необходимы, иначе function types cannot have argument labels; use '_' before 'a'
   return $0 + $1
}

print(closureSum(1,2)) // 3

