import SwiftUI

struct Home: View {
    @Binding var session: Session
    
    private let projects = [Model(title: "To the office",
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
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding(.leading)
                    .padding(.top)
                Spacer()
            }
            ForEach(0 ..< projects.count) { index in
                Button {
                    session.project = projects[index]
                } label: {
                    Item(project: projects[index])
                        .contentShape(Rectangle())
                }
                .padding(.horizontal)
            }
        }.sheet(item: $session.project) { _ in
            Project(session: $session)
        }
    }
}
