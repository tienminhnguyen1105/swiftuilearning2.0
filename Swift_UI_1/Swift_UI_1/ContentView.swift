//
//  ContentView.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
           
        VStack(alignment:.leading) {
            Text("Turtle Rock")
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
            .font(.system(size: 35))
            HStack{
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
        }
        .padding()
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
