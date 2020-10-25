import SwiftUI

extension Home {
    struct Item: View {
        let project: Project
        
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.init(.secondarySystemBackground))
                VStack {
                    HStack {
                        Text(verbatim: project.title)
                        Spacer()
                    }
                    ZStack {
                        Trail()
                        VStack {
                            ForEach(0 ..< project.points.count) { point in
                                HStack {
                                    Text(verbatim: project.points[point])
                                        .lineLimit(1)
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
//                                        .padding(point > 0 ? .top : .init())
                                    Spacer()
                                }
                            }
                        }.padding(.leading, 12)
                    }
                }.padding()
            }.padding(.horizontal)
        }
    }
}
