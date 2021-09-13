import Foundation

func getRandSize(n: Int) -> Int {
    return Int.random(in: 1 ... n * 5)
}

func getArray(n: Int) -> [[Int]]{
    var returnedArray = [[Int]]()
    var arrSizes = [Int]()
    var SetOfSizes = Set<Int>()
    
    while SetOfSizes.count != n {
        SetOfSizes.insert(getRandSize(n: n))
    }
    
    arrSizes = Array(SetOfSizes)
    
    for i in 0 ..< n {
        var array = [Int]()
        
        for _ in 0 ..< arrSizes[i] {
            array.append(Int.random(in: 1...100))
        }
        
        if (i + 1) % 2 == 0{
            array.sort()
        } else {
            array.sort()
            array.reverse()
        }
        
        returnedArray.append(array)
    }
    
    return returnedArray
}

print("Введите n: ")

let enteredKey = readLine()
let n = (enteredKey! as NSString).integerValue

var array = getArray(n: n)

