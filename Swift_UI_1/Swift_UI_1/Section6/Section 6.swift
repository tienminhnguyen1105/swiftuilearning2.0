//
//  Section 6.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI
import MapKit

//: MARK: - Compose the detail view with Mapkit



struct Section_6: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment : .leading){
                Text("Turtle Rock")
                    .font(.system(size: 40))
                    .bold()
                HStack{
                    Text("Twenty nine palm")
                    Spacer()
                    Text("California")
                }
                Divider()
                Text("About Turtle Rock")
                                   .font(.title2)
                               Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
            
        }
    }
    
    private var region: MKCoordinateRegion {
           MKCoordinateRegion(
               center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
    
}



#Preview {
    Section_6()
}
