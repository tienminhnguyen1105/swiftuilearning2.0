//
//  DetailView.swift
//  Birdsong_SwiftUI
//


import SwiftUI

struct DetailView: View , Hashable {
    
    var bird : Bird = .init()
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing:10) {
                Image("imageBanner_1")
                    .resizable()
                    .frame(height: 300)
                
                Text("Common Chiffchaff")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width)
                    Text("Scientific name: Phylloscopus collybita")
                        .multilineTextAlignment(.leading)
                    Text("Description")
                    
            }
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

#Preview {
    DetailView()
}
