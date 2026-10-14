
import Foundation

func greet() {
    print("Welcome to SE4041")
}

func greetStudent(name: String) {
    print("Welcome \(name)")
}

func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

func calculateAverage(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}

func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

func double(_ number: Int) -> Int {
    return number * 2
}

func result(_ mark: Int, passMark: Int = 50) -> String {
    return mark >= passMark ? "Pass" : "Fail"
}

func finalResult(mark: Int, passMark: Int = 50) -> String {
    return mark >= passMark ? "Pass" : "Fail"
}

greet()
greetStudent(name: "Amal")
print(grade(for: 68))
print("Average:", calculateAverage(75, 82, 68))
travel(from: "Malabe", to: "Kandy")
print(double(10))
print(result(68))
print(result(68, passMark: 75))
print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))
