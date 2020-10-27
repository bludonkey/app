import SwiftUI

struct Project: View {
    @Binding var session: Session
    @State private var options = false
    @State private var stops = false
    
    var body: some View {
        ZStack {
            Map(session: $session)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Control.Circle(image: "dial.max.fill") {
                        options = true
                    }
                    .sheet(isPresented: $options) {
                        Options(session: $session, visible: $options)
                    }
                    Control.Circle(image: "list.bullet") {
                        stops = true
                    }
                    .sheet(isPresented: $stops) {
                        Stops(session: $session, visible: $stops)
                    }
                    Control.Circle(image: "arrow.down") {
                        session.project = nil
                    }
                    Spacer()
                }
            }
        }
    }
}
