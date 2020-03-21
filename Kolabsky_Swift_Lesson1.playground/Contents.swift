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

/*
 Задание №2
 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
*/

// Объявим переменные
var a1: Double = 5
var b1: Double = 10

// Решение
var S = (a1 * b1) / 2
var c1 = sqrt(pow(a1, 2) + pow(b1, 2))
var P = a1 + b1 + c1
print("Площадь треугольника S = \(S)")
print("Гипотенуза с = \(c1)")
print("Периметр P = \(P)\n")

/*
 Задание №3
 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
 */

// Объявим переменные
var deposit = 500_000.0
var percent = 7.0

print("Рассчет суммы вклада за весь период:")

for number in 1...5 {
    let profit = (deposit * percent) / 100
    deposit += profit
    print("\(number) год - \(Float(deposit)) рублей")
}
