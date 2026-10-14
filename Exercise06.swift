
import Foundation

struct Student {
    var name: String
    var mark: Int

    var grade: String {
        if mark >= 75 {
            return "A"
        } else if mark >= 50 {
            return "Pass"
        } else {
            return "Fail"
        }
    }

    func displayDetails() {
        print("Name: \(name), Mark: \(mark), Grade: \(grade)")
    }
}

struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

class Lecturer {
    var name: String

    init(name: String) {
        self.name = name
    }

    func introduce() {
        print("Lecturer: \(name)")
    }
}

var student1 = Student(name: "Amal", mark: 72)
student1.displayDetails()

let rectangle = Rectangle(width: 10, height: 5)
print("Rectangle area:", rectangle.area)

var counter = Counter()
counter.increment()
print("Counter:", counter.count)

let lecturer1 = Lecturer(name: "Mr. Silva")
let lecturer2 = lecturer1
lecturer2.name = "Mr. Perera"

lecturer1.introduce()
lecturer2.introduce()

var student2 = student1
student2.name = "Nimali"

print("Original student:", student1.name)
print("Copied student:", student2.name)
