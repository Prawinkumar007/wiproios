import Foundation

// MARK: - 1. Variables, constants, and basic types

let learnerName = "Swift Learner"
var completedTopics = 3
completedTopics += 1
let isLearningSwift = true

print("Learner: \(learnerName)")
print("Completed topics: \(completedTopics)")
print("Learning Swift: \(isLearningSwift)")

// MARK: - 2. Operators and expressions

let a = 20
let b = 6
print("Addition: \(a + b)")
print("Subtraction: \(a - b)")
print("Multiplication: \(a * b)")
print("Division: \(a / b)")
print("Remainder: \(a % b)")
print("Is a greater than b? \(a > b)")

// MARK: - 3. Arrays, Sets, and Dictionaries

var topics = ["Swift Basics", "Collections", "Optionals"]
topics.append("Functions")
print("Array: \(topics)")
print("First topic: \(topics[0])")

var uniqueTopics: Set<String> = ["Arrays", "Sets", "Dictionaries", "Arrays"]
uniqueTopics.insert("Closures")
print("Set: \(uniqueTopics.sorted())")

var scores = ["Arrays": 90, "Optionals": 85]
scores["Functions"] = 92
print("Dictionary: \(scores)")
print("Array score: \(scores["Arrays"] ?? 0)")

// MARK: - 4. Enumerations, structures, and classes

enum LearningStatus {
    case notStarted, inProgress, completed
}

let status: LearningStatus = .inProgress
print("Learning status: \(status)")

struct Lesson {
    let title: String
    var isCompleted: Bool

    mutating func markCompleted() {
        isCompleted = true
    }
}

var lesson = Lesson(title: "Swift Structures", isCompleted: false)
lesson.markCompleted()
print("\(lesson.title): \(lesson.isCompleted)")

class Learner {
    let name: String

    init(name: String) {
        self.name = name
    }

    func introduce() {
        print("Hello, I am \(name).")
    }
}

let student = Learner(name: "Alex")
student.introduce()

// MARK: - 5. Optionals and optional handling

var nickname: String? = "Swift Developer"
print(nickname ?? "No nickname")

if let unwrappedNickname = nickname {
    print("Nickname: \(unwrappedNickname)")
}

func displayName(_ name: String?) {
    guard let name else {
        print("Name is unavailable")
        return
    }
    print(name.uppercased())
}

displayName(nickname)

// MARK: - 6. ARC and memory management

class Course {
    let title: String
    weak var instructor: Instructor?

    init(title: String) {
        self.title = title
    }

    deinit {
        print("\(title) released from memory")
    }
}

class Instructor {
    let name: String
    var course: Course?

    init(name: String) {
        self.name = name
    }
}

do {
    let instructor = Instructor(name: "Taylor")
    let course = Course(title: "Swift Fundamentals")
    course.instructor = instructor  // weak reference
    instructor.course = course      // strong reference
}

// MARK: - 7. Functions: parameters and return types

func greet(name: String) -> String {
    "Hello, \(name)!"
}

func calculateTotal(price: Double, quantity: Int) -> Double {
    price * Double(quantity)
}

print(greet(name: "Developer"))
print("Total: \(calculateTotal(price: 99.5, quantity: 3))")

// MARK: - 8. Closures and higher-order functions

let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
let evenNumbers = numbers.filter { $0.isMultiple(of: 2) }
let sum = numbers.reduce(0, +)
let descending = numbers.sorted { $0 > $1 }

print("Doubled: \(doubled)")
print("Even numbers: \(evenNumbers)")
print("Sum: \(sum)")
print("Descending: \(descending)")

// MARK: - 9. Protocols and extensions

protocol Describable {
    var summary: String { get }
}

extension Describable {
    func describe() {
        print(summary)
    }
}

struct SwiftCourse: Describable {
    let name: String
    var summary: String { "Course: \(name)" }
}

SwiftCourse(name: "Swift Fundamentals").describe()

extension String {
    var isNotEmpty: Bool { !isEmpty }
}

print("Swift".isNotEmpty)

// MARK: - 10. Generics and error handling

func firstElement<T>(of values: [T]) -> T? {
    values.first
}

print(firstElement(of: ["Swift", "UIKit"]) ?? "No values")

enum LearningError: Error {
    case invalidScore
}

func result(for score: Int) throws -> String {
    guard (0...100).contains(score) else {
        throw LearningError.invalidScore
    }
    return score >= 50 ? "Passed" : "Needs improvement"
}

do {
    print("Assessment: \(try result(for: 85))")
} catch LearningError.invalidScore {
    print("Score must be between 0 and 100.")
} catch {
    print("Unexpected error: \(error)")
}

print("Swift fundamentals practice completed.")
