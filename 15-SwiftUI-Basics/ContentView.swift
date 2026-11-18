import SwiftUI

struct ContentView: View {
    @State private var completed = 0
    private let topics = ["Swift", "Collections", "Optionals", "SwiftUI"]

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Wipro iOS Training")
                    .font(.title)
                    .bold()

                Text("Completed tasks: \(completed)")
                    .font(.headline)

                Button("Mark one complete") {
                    completed += 1
                }
                .buttonStyle(.borderedProminent)

                List(topics, id: \.self) { topic in
                    Text(topic)
                }
            }
            .padding()
            .navigationTitle("Learning Tracker")
        }
    }
}
