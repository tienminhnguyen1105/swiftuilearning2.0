//
//  HomeBannerView.swift
//  Birdsong_SwiftUI
//


import SwiftUI

struct HomeBannerView: View {
    var body: some View {
        ZStack{
            Image("home_banner")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 14))
            
            VStack(alignment:.leading){
                Text("Useful knowledge and how to identify birds for birders")
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.top , 10)
                    .padding(.trailing , 130)
                    .lineLimit(3)
                Image("home_learn")
                    .padding(.bottom , 15)
            }
            .padding(.leading ,10)
            
        }
        .frame(height: 130)
        .padding([.leading,.trailing],0)
        
        
    }
    
}

#Preview {
    HomeBannerView()
}
