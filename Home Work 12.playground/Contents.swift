import UIKit

let someCollention: [Any] = [5.2, 7.4, 10, 8, "Hello", true, "Bye", false, 11]
print(someCollention)

for element in someCollention {
    if element is Int {
        print("Целое число \(element)")
    }
    if element is Double {
        print("Вещественное число \(element)")
    }
    if element is String {
        print("Строка \(element)")
    }
    if element is Bool {
        print("Булевое значение \(element)")
    }
}

let dictionary: [String : Any] = ["Целое число" : Int.random(in: 1...10),
                                  "Вещественное число" : Double.random(in: 1...10),
                                  "Строка" : "Hello",
                                  "Строка2" : "\(Int.random(in: 1...10))",
                                  "Булевое значение" : Bool(.random())]

for elements in dictionary {
    print("\(elements.key) - \(elements.value)")
}

var total: Double = 0

for element in dictionary {
    if let someInt = element.value as? Int {
        total += Double(someInt)
    }
    if let someValue = element.value as? Double {
        total += someValue
    }
    if element.value is String {
        total += 1
    }
    if let boolElement = element.value as? Bool {
        switch boolElement {
        case true:
            total += 2
        case false:
            total -= 3
        }
    }
}
print(total)

total = 0

for element in dictionary {
    if let someInt = element.value as? Int {
        total += Double(someInt)
    }
    if let someValue = element.value as? Double {
        total += someValue
    }
    if let stringValue = element.value as? String {
        if let convertValue = Double(stringValue) {
            total += convertValue
        }
    }
}
print(total)


