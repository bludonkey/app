import SwiftUI
import MapKit

struct Map: UIViewRepresentable {
    @Binding var session: Session
    
    func makeCoordinator() -> Coordinator {
        .init(view: self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        context.coordinator
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) { }
}
