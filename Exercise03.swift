
import Foundation

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    guard !marks.isEmpty else {
        return (0, 0, 0.0)
    }

    let minimum = marks.min()!
    let maximum = marks.max()!
    let average = Double(marks.reduce(0, +)) / Double(marks.count)

    return (minimum, maximum, average)
}

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    guard !marks.isEmpty else {
        return (0, 0.0)
    }

    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)

    return (total, average)
}

let marks = [75, 82, 68, 90, 45]

let result = summary(of: marks)
print("Minimum:", result.minimum)
print("Maximum:", result.maximum)
print("Average:", result.average)

let analysis = analyzeMarks(marks)
print("Total:", analysis.total)
print("Average:", analysis.average)
