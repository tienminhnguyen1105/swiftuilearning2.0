//
//  CircleImage.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("imv1")
            .clipShape(.circle)
            .aspectRatio(contentMode: .fill)
            .overlay {
                Circle().stroke(.gray,lineWidth: 2)
            }
    }
    
}

#Preview {
    CircleImage()
}
