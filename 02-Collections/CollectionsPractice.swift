import Foundation

var topics = ["Swift", "UIKit", "SwiftUI"]
topics.append("Networking")
topics.remove(at: 1)
for (index, topic) in topics.enumerated() {
    print("\(index): \(topic)")
}

var uniqueTopics: Set<String> = ["Swift", "UIKit", "Swift"]
uniqueTopics.insert("SwiftUI")
print("Unique topics: \(uniqueTopics.sorted())")
print("Contains UIKit: \(uniqueTopics.contains("UIKit"))")

var scores = ["Arrays": 90, "Sets": 85]
scores["Dictionaries"] = 95
scores["Arrays"] = 92
for (topic, score) in scores.sorted(by: { $0.key < $1.key }) {
    print("\(topic): \(score)")
}
