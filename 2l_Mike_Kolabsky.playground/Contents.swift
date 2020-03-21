import UIKit

//1
func evenNum(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

//2
func divByThree(num: Int) -> Bool {
    if num % 3 == 0 {
        return true
    } else {
        return false
    }
}

//3
var array: [Int] = Array(1...100)

//4
for (_, value) in array.enumerated() {
    if evenNum(num: value) == true {
        array.remove(at: array.firstIndex(of: value)!)
    } else if divByThree(num: value) == false {
        array.remove(at: array.firstIndex(of:value)!)
    }
}
print("\(array) \n")

//5
 
func fibonacci (count: Int) -> [Decimal] {
    var fibArray: [Decimal] = [1, 1]
    for _ in 1...count {
        let newFibo = fibArray[fibArray.count - 1] + fibArray[fibArray.count - 2]
        fibArray.append(newFibo)
    }
    return fibArray
}

var fibArray = fibonacci(count: 100)
print("\(fibArray) \n")
