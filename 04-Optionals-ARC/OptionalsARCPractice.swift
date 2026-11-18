import Foundation

let optionalName: String? = "Taylor"
if let name = optionalName {
    print("Hello, \(name)")
} else {
    print("Name not provided")
}
print(optionalName ?? "Guest")

class Department {
    let name: String
    var manager: Manager?
    init(name: String) { self.name = name }
}

class Manager {
    let name: String
    weak var department: Department?
    init(name: String) { self.name = name }
}

do {
    let department = Department(name: "iOS")
    let manager = Manager(name: "Sam")
    department.manager = manager
    manager.department = department
}
