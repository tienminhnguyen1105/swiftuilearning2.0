//
//  HomeSliderView.swift
//  Birdsong_SwiftUI
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct HomeSliderView: View {
    
    var listBird : [Bird] = Bundle.main.decode2Array(Bird.self, file:"ListBird.json")
    
    var onSelected: (Bird) -> Void

    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(listBird, id: \.self) { bird in
                        ZStack {
                        HStack (spacing : 0) {
                            VStack(alignment: .leading,spacing: 5) {
                                Text(bird.name)
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                    .font(.system(size: 16))
                                Text(bird.getDesc())
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(3)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                            }
                            
                            .padding()
                            .frame(width: 180)
                            AsyncImage(url: URL(string: bird.getImageBanner())) { image in
                                image.resizable()
                                
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 100,height: 130)
                        }
                        .background(Color("Color_lightGreen"))
                        .cornerRadius(12)
                        .onTapGesture {
                            onSelected(bird)
                        }
//                            Button {
//                                print("Hello")
//                            } label: {
//                                Text("Button")
//                            }
//                            .background(.white)
//                            .scaledToFill()
//                            .frame(width: 280,height: 130)
                    }
                    }
                }
            }
        }
        .navigationTitle("Danh sách")
    }
}
#Preview {
    HomeSliderView()
}

