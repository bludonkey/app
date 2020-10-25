import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            Item(project: .init(title: "To the office",
                                distance: 12.5,
                                duration: 90 * 60,
                                points: ["Evergreen street 23",
                                         "Main street 32"]))
            Item(project: .init(title: "Market",
                                distance: 12.5,
                                duration: 90 * 60,
                                points: ["Evergreen street 23",
                                         "Main street 32"]))
            Item(project: .init(title: "Exploring",
                                distance: 12.5,
                                duration: 90 * 60,
                                points: ["Evergreen street 23",
                                         "Main street 32",
                                         "Another street something bla bla bla street bla bla bla 23 more bla bla bla more more"]))
            Item(project: .init(title: "Exploring",
                                distance: 12.5,
                                duration: 90 * 60,
                                points: ["Evergreen street 23",
                                         "Main street 32",
                                         "Another street something bla bla bla street bla bla bla 23 more bla bla bla more more",
                                         "Some other",
                                         "Next",
                                         "Previous"]))
        }
    }
}
