import Foundation

func completionPercentage(completed: Int, total: Int) -> Double {
    guard total > 0 else { return 0 }
    return Double(completed) / Double(total) * 100
}

let tasks = ["Optionals", "Arrays", "Closures", "Protocols"]
let sortedTasks = tasks.sorted { $0.localizedCaseInsensitiveCompare($1) == .orderedAscending }
let longNames = tasks.filter { $0.count > 6 }
let totalCharacters = tasks.reduce(0) { $0 + $1.count }

print(completionPercentage(completed: 3, total: 4))
print(sortedTasks)
print(longNames)
print(totalCharacters)
