//
//  HomeToolView.swift
//  Birdsong_SwiftUI
//


import SwiftUI

struct HomeToolView: View {
    var body: some View {
        ZStack {
            Image("home_tool_bgview")
                .resizable()
                .frame(height: 200)
                .cornerRadius(12)
            VStack {
                Text("Identify more than 10,000 bird species easily by sound or image")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                HStack(spacing : 40){
                    VStack{
                        Button {
                            
                        } label: {
                            Image("homeCameraBtn")
                        }
                        Text("Photo identification")
                            .lineLimit(2)
                            .foregroundColor(.white)
                    }
                    VStack{
                        
                        Button {
                           

                        } label: {
                            Image("homeSoundBtn")
                        }
                        Text("Sound identification")
                            .lineLimit(2)
                            .foregroundColor(.white)
                            
                    }
                }
            }
            .padding([.leading,.trailing],25)
            .padding([.bottom,.top],15)

        }
    }
}

#Preview {
    HomeToolView()
}
