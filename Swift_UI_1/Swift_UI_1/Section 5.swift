//
//  Section 5.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

//: MARK: - Use SwiftUI views from other frameworks ( Mapkit  ) 


import SwiftUI
import MapKit

struct Section_5: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
           MKCoordinateRegion(
               center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
    
}

#Preview {
    Section_5()
}
