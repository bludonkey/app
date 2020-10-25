import SwiftUI

struct Home: View {
    private let projects = [Project(title: "To the office",
                                    distance: 12.5,
                                    duration: 90 * 60,
                                    points: ["Evergreen street 23",
                                             "Main street 32"]),
                            .init(title: "Market",
                                                distance: 12.5,
                                                duration: 90 * 60.0,
                                                points: ["Evergreen street 23",
                                                         "Main street 32"]),
                            .init(title: "Exploring",
                                                distance: 12.5,
                                                duration: 90 * 60.0,
                                                points: ["Evergreen street 23",
                                                         "Main street 32",
                                                         "Another street something bla bla bla street bla bla bla 23 more bla bla bla more more"]),
                            .init(title: "Exploring",
                                                distance: 12.5,
                                                duration: 90 * 60.0,
                                                points: ["Evergreen street 23",
                                                         "Main street 32",
                                                         "Another street something bla bla bla street bla bla bla 23 more bla bla bla more more",
                                                         "Some other",
                                                         "Next",
                                                         "Previous"])]
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Maps")
                    .font(.title)
                    .foregroundColor(.primary)
                    .padding(.leading)
                    .padding(.top)
                Spacer()
            }
            ForEach(0 ..< projects.count) { index in
                Button {
                    
                } label: {
                    Item(project: projects[index])
                        .contentShape(Rectangle())
                }.padding(.horizontal)
            }
        }
    }
}
