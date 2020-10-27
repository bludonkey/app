import SwiftUI
import MapKit
import Combine

extension Map {
    final class Coordinator: MKMapView, MKMapViewDelegate {
        private var subs = Set<AnyCancellable>()
        
        required init?(coder: NSCoder) { nil }
        init(view: Map) {
            super.init(frame: .zero)
            translatesAutoresizingMaskIntoConstraints = false
            isRotateEnabled = false
            isPitchEnabled = false
            showsUserLocation = true
            mapType = .standard
            delegate = self
            
            var region = MKCoordinateRegion()
            region.center = userLocation.location == nil ? centerCoordinate : userLocation.coordinate
            region.span = .init(latitudeDelta: 0.005, longitudeDelta: 0.005)
            setRegion(region, animated: false)
        }
    }
}
