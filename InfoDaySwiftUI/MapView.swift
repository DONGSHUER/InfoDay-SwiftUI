//
//  MapView.swift
//  InfoDaySwiftUI
//
//  Created by DONG SHUER on 28/11/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 22.33787,
            longitude: 114.18131
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.005,
            longitudeDelta: 0.005
        )
    )
    
    var body: some View {
        
        ZStack(alignment:.bottom){
            Map(coordinateRegion: $region, showsUserLocation: true)
                .edgesIgnoringSafeArea(.all)
            
            Button("Move") {
                withAnimation {
                    region.center = CLLocationCoordinate2D(
                        latitude: 22.33787,
                        longitude: 114.18131
                    )
                }
            }
        }
    }
}
