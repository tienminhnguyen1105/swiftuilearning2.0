//
//  Section 4.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

//: MARK: - Create a custom image view

import SwiftUI

struct Section_4: View {
    var body: some View {
        VStack {
            Image("imv1")
                .clipShape(.circle)
                .aspectRatio(contentMode: .fill)
                .overlay {
                    Circle().stroke(.gray,lineWidth: 2)
                }
            Text("Ảnh test")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.red)
            Image("imv2")
            
        }
        .padding()
    }
}

#Preview {
    Section_4()
}
