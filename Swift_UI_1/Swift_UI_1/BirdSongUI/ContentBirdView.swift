//
//  ContentBirdView.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 06/08/2025.
//

import SwiftUI

struct ContentBirdView: View {
    
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
    ContentBirdView()
}
