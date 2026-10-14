
import Foundation

func register(name: String?) {
    guard let name = name, !name.isEmpty else {
        print("Name is required")
        return
    }

    print("Registration successful: \(name)")
}

func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name is missing")
        return
    }

    guard let mark = mark else {
        print("Student mark is missing")
        return
    }

    print("Student: \(name)")
    print("Mark: \(mark)")
}

register(name: "Amal")
register(name: nil)

checkStudent(name: "Nimali", mark: 75)
checkStudent(name: nil, mark: 60)
checkStudent(name: "Kasun", mark: nil)
