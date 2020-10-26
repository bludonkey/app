import SwiftUI
import MapKit

struct Project: View {
    @Binding var project: Model?
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.horizontal)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Control.Circle(image: "dial.max.fill") {
                        
                    }
                    Control.Circle(image: "list.bullet") {
                        
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
