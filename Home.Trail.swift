import SwiftUI

extension Home {
    struct Trail: View {
        var body: some View {
            HStack {
                ZStack {
                    Line()
                        .stroke(Color.accentColor, style: .init(lineWidth: 1, lineCap: .round))
                    VStack {
                        Circle()
                            .frame(width: 6, height: 6)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Circle()
                            .frame(width: 6, height: 6)
                            .foregroundColor(.accentColor)
                    }
                }
                .frame(width: 6)
                .padding(.vertical, 4)
                Spacer()
            }
        }
    }
    
    struct Line: Shape {
        func path(in rect: CGRect) -> Path {
            .init {
                $0.move(to: .init(x: 3, y: 8))
                $0.addLine(to: .init(x: 3, y: rect.maxY - 8))
            }
        }
    }
}
