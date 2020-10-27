import SwiftUI
import MapKit

struct Project: View {
    @Binding var project: Model?
    @State private var list = false
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        ZStack {
            VStack {
                Map(coordinateRegion: $region)
                    .edgesIgnoringSafeArea(.horizontal)
                if list {
                    ScrollView {
                        HStack {
                            Text("hello world")
                            Spacer()
                        }
                    }.frame(height: 250)
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Control.Circle(image: "dial.max.fill") {
                        
                    }
                    Control.Circle(state: list ? .selected : .ready, image: "list.bullet") {
                        withAnimation(.easeInOut(duration: 1)) {
                            list.toggle()
                        }
                    }
                    Control.Circle(image: "location.fill.viewfinder") {
                        
                    }
                    Control.Circle(image: "arrow.down") {
                        project = nil
                    }
                    Spacer()
                }
            }
        }
    }
}
