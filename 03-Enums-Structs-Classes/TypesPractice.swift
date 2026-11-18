import Foundation

enum TaskStatus {
    case todo, inProgress, done
}

struct TrainingTask {
    let title: String
    var status: TaskStatus

    mutating func markDone() {
        status = .done
    }
}

class Course {
    let title: String
    init(title: String) {
        self.title = title
    }
}

var task = TrainingTask(title: "Learn structs", status: .todo)
task.markDone()
print(task.title, task.status)

let courseA = Course(title: "Swift")
let courseB = courseA
print(courseA === courseB)
