import SwiftUI

struct Draw: View {
    @Binding var session: Session
    @Binding var visible: Bool
    @State private var delete = false
    @State private var stops = false
    
    var body: some View {
        ZStack {
            Map(session: $session)
                .edgesIgnoringSafeArea(.all)
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Control.Circle(image: "xmark") {
                        delete = true
                    }
                    .actionSheet(isPresented: $delete) {
                        ActionSheet(title: Text("Delete map?"), buttons: [.destructive(Text("Delete")) {
                            visible = false
                        }, .default(Text("Cancel"))])
                    }
                    Control.Circle(image: "list.bullet") {
                        stops = true
                    }
                    .sheet(isPresented: $stops) {
                        Stops()
                    }
                    Control.Circle(image: "location.viewfinder") {
                    }
                    Control.Circle(image: "mappin") {
                    }
                    Control.Circle(image: "chevron.right") {
                    }
                }
            }
        }
    }
}
