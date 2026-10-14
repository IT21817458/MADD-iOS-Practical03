
import Foundation

enum Grade: String {
    case A, AMinus = "A-", BPlus = "B+", B, BMinus = "B-"
    case CPlus = "C+", C, CMinus = "C-", F
}

struct Student {
    var studentID: String
    var name: String
    var mark: Int

    var grade: Grade {
        switch mark {
        case 80...100: return .A
        case 75..<80: return .AMinus
        case 70..<75: return .BPlus
        case 65..<70: return .B
        case 60..<65: return .BMinus
        case 55..<60: return .CPlus
        case 45..<55: return .C
        case 40..<45: return .CMinus
        default: return .F
        }
    }

    func displayDetails() {
        print("ID: \(studentID) | Name: \(name) | Mark: \(mark) | Grade: \(grade.rawValue)")
    }
}

let students = [
    Student(studentID: "S001", name: "Amal", mark: 72),
    Student(studentID: "S002", name: "Nimali", mark: 45),
    Student(studentID: "S003", name: "Ruwan", mark: 68),
    Student(studentID: "S004", name: "Sanduni", mark: 90),
    Student(studentID: "S005", name: "Kasun", mark: 38)
]

print("=== STUDENT MANAGEMENT SYSTEM ===")

for student in students {
    student.displayDetails()
}

let passedStudents = students.filter { $0.mark >= 50 }
print("\n=== PASSED STUDENTS ===")

for student in passedStudents {
    print(student.name)
}

let studentNames = students.map { $0.name }
print("\nStudent Names:", studentNames)

let totalMarks = students.reduce(0) { $0 + $1.mark }
let averageMarks = Double(totalMarks) / Double(students.count)

print("Total Marks:", totalMarks)
print("Average Marks:", averageMarks)
