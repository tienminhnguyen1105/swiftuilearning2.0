//
//  ContentView.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
////        VStack {
//           
//        VStack(alignment:.leading) {
//            Text("Turtle Rock")
//                .fontWeight(.semibold)
//                .foregroundColor(Color.black)
//            .font(.system(size: 35))
//            HStack{
//                Text("Joshua Tree National Park")
//                Spacer()
//                Text("California")
//            }
//        }
//        .padding()
////        }
////        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

struct ContentView: View {
    
    @State private var navigationPath = NavigationPath()


    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(spacing:10) {
                    HomeBannerView()
                        .frame(height: 130)
                    SearchView()
                    HomeSliderView(onSelected: { bird in
                        print(bird.getName())
                    })
                    .frame(height: 150)
                    HomeToolView()
                        .frame(height: 200)
                }
            }
            .padding([.trailing , .leading ], 10)
        }
        TabbarView()
            .frame(height: 60)
    }
}

#Preview {
    ContentView()
}
