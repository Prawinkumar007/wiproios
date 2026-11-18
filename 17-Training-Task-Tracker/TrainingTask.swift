import Foundation
import Combine

struct TrainingTask: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted = false
}

@MainActor
final class TrainingTaskStore: ObservableObject {
    @Published var tasks = [
        TrainingTask(title: "Revise Swift fundamentals"),
        TrainingTask(title: "Practice collections"),
        TrainingTask(title: "Build a SwiftUI screen")
    ]

    var completedCount: Int { tasks.filter(\.isCompleted).count }
    var progress: Double {
        guard !tasks.isEmpty else { return 0 }
        return Double(completedCount) / Double(tasks.count)
    }

    func toggle(_ task: TrainingTask) {
        guard let index = tasks.firstIndex(where: { $0.id == task.id }) else { return }
        tasks[index].isCompleted.toggle()
    }
}
