
import Foundation

enum Direction {
    case north, south, east, west
}

enum Status {
    case pending, approved, rejected
}

enum Grade: String {
    case A = "Excellent"
    case B = "Good"
    case C = "Average"
    case F = "Fail"
}

enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let direction = Direction.north
print("Direction:", direction)

let status = Status.approved
print("Status:", status)

let grade = Grade.A
print("Grade:", grade.rawValue)

let module = ModuleStatus.inProgress
print("Module Status:", module.rawValue)
