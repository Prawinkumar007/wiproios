import Foundation

protocol Displayable {
    var displayName: String { get }
}

extension Displayable {
    func display() { print(displayName) }
}

struct Module: Displayable {
    let displayName: String
}

func first<T>(in values: [T]) -> T? {
    values.first
}

enum ValidationError: Error {
    case emptyTitle
}

func validate(title: String) throws {
    guard !title.isEmpty else { throw ValidationError.emptyTitle }
}

Module(displayName: "Swift Generics").display()
print(first(in: [1, 2, 3]) ?? 0)

do {
    try validate(title: "")
} catch {
    print("Validation failed: \(error)")
}
