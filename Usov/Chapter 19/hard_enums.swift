// Страница. 326.
// @Не понял нифига...
enum ArithmeticExpression {
    //Указатель на конкретное значение
    case number( Int )
    // Указатель на операцию сложения. Благодаря indirect мы можем обращаться к перечислению рекурсивно
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    // Указатель на операцию вычитания
    indirect case substraction(ArithmeticExpression, ArithmeticExpression)
    func evaluate(_ expression: ArithmeticExpression? = nil) -> Int { // Если не значение по умолчанию, то было бы hardExpr.evaluate(hardExpr)
        switch expression ?? self {
            case let .number( value ):
                return value
            case let .addition(valueLeft, valueRight):
                return evaluate(valueLeft) + evaluate(valueRight)
            case .substraction(let valueLeft,let valueRight):
                return evaluate(valueLeft) - evaluate(valueRight)
        }
    }
}


let hardExpr = ArithmeticExpression.addition( .number(20), .substraction( .number(10), .number(34) ) )
print(hardExpr.evaluate()) // -4