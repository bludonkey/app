import Foundation

struct Model: Identifiable {
    let id = UUID()
    let title: String
    let distance: Double
    let duration: TimeInterval
    let points: [String]
}
