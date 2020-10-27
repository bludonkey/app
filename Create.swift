import SwiftUI

struct Create: View {
    @Binding var session: Session
    @State private var name = ""
    @State private var engine = 0
    @State private var create = false
    
    var body: some View {
        Form {
            Section(header:
                        Text("Name")) {
                TextField("My map", text: $name)
            }
            Section(header:
                        Text("Type")) {
                Picker("", selection: $engine) {
                    Image(systemName: "figure.walk")
                        .tag(0)
                    Image(systemName: "bicycle")
                        .tag(1)
                    Image(systemName: "car.fill")
                        .tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .labelsHidden()
            }
            Button {
                create = true
            } label: {
                HStack {
                    Text("Start new map")
                    Spacer()
                    Image(systemName: "selection.pin.in.out")
                }
                .foregroundColor(.primary)
            }
        }
        .sheet(isPresented: $create) {
            Draw(session: $session, visible: $create)
        }
    }
}
