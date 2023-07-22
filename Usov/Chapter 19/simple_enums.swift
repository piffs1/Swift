// Перечисления

enum CurrencyUnit {
    case rouble
    case euro
}

enum CurrencyUnitX {
    case rouble, euro
}

let curUnit: CurrencyUnit = .rouble
print(type(of:curUnit)) //CurrencyUnit

var curUnitX = CurrencyUnitX.rouble
print(type(of:curUnitX)) //CurrencyUnitX

// Дальнейшее изменения, когда тип уже определен возможно через .значение
curUnitX = .euro // ok



enum AdvancedCurrencyUnit {
    enum DollarCountries {
    case usa12
    case canada
    case australia
}
    case rouble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    
    case dollar(nation: DollarCountries, shortName: String)
    case rofl(anekdoti: String) 
    // case по параметрам могут различаться
}

// Несмотря на это, все равно можно достучаться до внутреннего DollarCountries
let aurstralia : AdvancedCurrencyUnit.DollarCountries = .australia

/*
enum AdvancedCurrencyUnit {
    case rouble([String], String)
    case euro([String], String)
}
*/

let euroCurrency : AdvancedCurrencyUnit = .euro(countries: ["German", "France"], shortName: "EUR")
let roflCurrency : AdvancedCurrencyUnit = .rofl(anekdoti: "Заходит худой барсук в бар, а там полный бар сук")

let dollarUsaCurrency: AdvancedCurrencyUnit = .dollar(nation: .usa12, shortName: "USD")
print(dollarUsaCurrency) //dollar(nation: SwiftPlayground.DollarCountries.usa, shortName: "USD")
print(type(of:dollarUsaCurrency)) // AdvancedCurrencyUnit

// SWITCH FOR ENUM
switch dollarUsaCurrency {
    case .rouble:
        print("Рубль")
    case let .euro(countries, shortname):
        print("Евро. Страны : \(countries). Краткое наименование: \(shortname)")
    case .dollar(let nation, let shortname):
        print("Доллар \(nation). Краткое наименование: \(shortname)") // Доллар usa12. Краткое наименование: USD
    default:
        break
}



