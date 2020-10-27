import SwiftUI

struct Stops: View {
    @Binding var session: Session
    @Binding var visible: Bool
    
    var body: some View {
        NavigationView {
            ScrollView {
                
            }
            .navigationBarTitle("Stops", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        visible = false
                                    }, label: {
                                        Image(systemName: "xmark")
                                            .font(.footnote)
                                            .foregroundColor(.secondary)
                                            .frame(width: 40, height: 50)
                                            .contentShape(Rectangle())
                                    }))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
