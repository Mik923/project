import UIKit

/*
 Задание №1
 Решить квадратное уравнение вида ax2 + bx + c = 0
*/

// Объявим переменные
var a: Double = 5
var b: Double = 16
var c: Double = 3
var x1 = 0.0
var x2 = 0.0

// Решение
var discriminant = pow(b, 2) - 4 * a * c

if (discriminant > 0) {
    x1 = (-b + sqrt(discriminant)) / (2 * a)
    x2 = (-b - sqrt(discriminant)) / (2 * a)
    print("""
        У этого уравнения два корня:
        x1 = \((x1*100).rounded()/100)
        x2 = \((x2*100).rounded()/100)
        
        """)
} else if (discriminant < 0) {
    print("У этого уравнения нет корней, т.к. дискриминант меньше нуля\n")
} else {
    x1 = -b / (2 * a)
    print("""
        Так как дискриминант равен нулю, то данное уравнение имеет один корень:
        x1 = \((x1*100).rounded() / 100)
        
        """)
}



enum SolveQuadraticResult{
    case twoSqr(one: Double, two: Double)
    case oneSqr(one: Double)
    case zeroSqr(error: String)
}
func solveQuadratic( a: Double, b: Double, c: Double) -> SolveQuadraticResult {
    if(a != 0) {
        let discr: Double = pow(b, 2) - 4*a*c
        if(discr > 0 ) {
            let sqrOne = (-1) * b/(2 * a) + (sqrt(discr) / (2 * a))
            let sqrTwo = (-1) * b/(2 * a) - (sqrt(discr) / (2 * a))
            return .twoSqr(one: sqrOne, two: sqrTwo)
        }
        else if(discr == 0) {
            let sqrOne = (-1) * b/(2 * a)
            return .oneSqr(one: sqrOne)
        } else {
            return .zeroSqr(error: "Корней нет")
        }
    }
    else {
        let sqrOne = (-1) * c / b
        return .oneSqr(one: sqrOne)
    }
}
let result = solveQuadratic(a: 5, b: 16, c: 3)
switch result {
case let .twoSqr(one, two):
    print("два корня", one, two)
case let .oneSqr(one):
    print("один корень", one)
case let .zeroSqr(error):
    print(error)
}
