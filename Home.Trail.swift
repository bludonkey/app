import SwiftUI

extension Home {
    struct Trail: View {
        let points: Int
        
        var body: some View {
            HStack {
                ZStack {
                    Vertical()
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
                    if points > 2 {
                        GeometryReader { geo in
                            ForEach(1 ..< points - 1) {
                                Horizontal(y: geo.size.height / .init(points - 1) * .init($0))
                                    .stroke(Color.accentColor, style: .init(lineWidth: 1, lineCap: .round))
                            }
                        }
                    }
                }
                .frame(width: 6)
                .padding(.vertical, 4)
                Spacer()
            }
        }
    }
    
    struct Vertical: Shape {
        func path(in rect: CGRect) -> Path {
            .init {
                $0.move(to: .init(x: 3, y: 8))
                $0.addLine(to: .init(x: 3, y: rect.maxY - 8))
            }
        }
    }
    
    struct Horizontal: Shape {
        let y: CGFloat
        
        func path(in rect: CGRect) -> Path {
            .init {
                $0.move(to: .init(x: 3, y: y))
                $0.addLine(to: .init(x: 6, y: y))
            }
        }
    }
}
