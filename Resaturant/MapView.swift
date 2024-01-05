//
//  MapView.swift
//  Resaturant
//
//  Created by Phunsup S. on 28/12/2566 BE.
//
import MapKit
import SwiftUI
    
struct MapView: UIViewRepresentable {
    
    let resaturant : RestaurantModel
    // เอา Map เอาไว้ดู
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    // กำหนดค่า
    func updateUIView(_ view: MKMapView, context: Context) {
        //
        let coordinate = CLLocationCoordinate2D(
            latitude: resaturant.latitude, longitude: resaturant.longtitude)
        // span คือการกำหนดมุมกล้อง ระยะซูม
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#Preview {
    MapView(resaturant: RestaurantModel.all()[0])
}
