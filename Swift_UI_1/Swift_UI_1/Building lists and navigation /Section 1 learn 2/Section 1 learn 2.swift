//
//  Section 1 learn 2.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 16/08/2024.
//

import SwiftUI

struct Section_1_learn_2: View {
    
    var landmark : Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
        }
    }
}

#Preview {
    Section_1_learn_2(landmark: landmarks[0])
}
