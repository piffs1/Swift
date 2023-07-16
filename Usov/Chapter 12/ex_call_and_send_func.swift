// Функция генерации случайного массива банкнот
func generateWallet(walletLength: Int) -> [Int] {
    // Существующие типы банкнот
    let typeOfBanknotes = [50, 100, 500, 1000, 5000]
    // array banknot
    var wallet: [Int] = []

    for _ in 1...walletLength {
        wallet.append( typeOfBanknotes.randomElement()! ) // force unwrapping?

    }
    return wallet
}    

// Функция подсчета денег в кошельке
func sumWallet (
    banknotesFunction wallet: (Int) -> [Int],
    walletLength: Int
) -> Int? {
    let myWalletArray = wallet( walletLength ) // Обращение к аргументу переданного в функцию sumWallet
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}

// Передаем функцию в функцию
sumWallet(banknotesFunction: generateWallet, walletLength: 20)