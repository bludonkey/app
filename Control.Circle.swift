import SwiftUI

extension Control {
    struct Circle: View {
        var state = State.ready
        let image: String
        let action: () -> Void
        
        var body: some View {
            Button {
                guard state != .disabled else { return }
                action()
            } label: {
                EmptyView()
            }.buttonStyle(Style(state: state) { current in
                ZStack {
                    SwiftUI.Circle()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.clear)
                    SwiftUI.Circle()
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.black.opacity(0.8), radius: 4, x: -3, y: -3)
                        .shadow(color: Color.black.opacity(0.8), radius: 4, x: 3, y: 3)
                        .foregroundColor(current == .disabled ? .init(.tertiarySystemBackground) : current == .selected ? .accentColor : .init(.secondarySystemBackground))
                    Image(systemName: image)
                        .font(Font.headline.bold())
                        .foregroundColor(current == .disabled ? .init(.tertiaryLabel) : current == .selected ? .black : .accentColor)
                }
                .contentShape(SwiftUI.Circle())
            })
        }
    }
}

private struct Style<Content>: ButtonStyle where Content : View {
    let state: Control.State
    let current: (Control.State) -> Content
    
    func makeBody(configuration: Configuration) -> some View {
        current(state != .disabled && configuration.isPressed ? .selected : state)
    }
}
