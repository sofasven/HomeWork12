import UIKit

let someCollention: [Any] = [5.2, 7.4, 10, 8, "Hello", true, "Bye", false, 11]
for item in someCollention {
    print(item)
}

for element in someCollention {
    if element is Int {
        print("Целое число \(element)")
    } else if element is Double {
        print("Вещественное число \(element)")
    } else if element is String {
        print("Строка \(element)")
    } else if element is Bool {
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
    } else if let someValue = element.value as? Double {
        total += someValue
    } else if element.value is String {
        total += 1
    } else if let boolElement = element.value as? Bool {
        boolElement ? +2 : -3
        }
    }

print(total)

total = 0

for element in dictionary {
    if let someInt = element.value as? Int {
        total += Double(someInt)
    } else if let someValue = element.value as? Double {
        total += someValue
    } else if let stringValue = element.value as? String {
        if let convertValue = Double(stringValue) {
            total += convertValue
        }
    }
}
print(total)


