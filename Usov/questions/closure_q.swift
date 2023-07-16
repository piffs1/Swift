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

handle(wallet: wallet, closure: {banknote in banknote >= 1000}) // <----------------------- насколько это Good Practice?. 
            // Не лучше ли указать все явно? { (banknote: Int) -> Bool in
            //                                  return banknote >= 1000  }