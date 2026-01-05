//
//  LandmarkRow.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 16/08/2024.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark : Landmark
    
    var body: some View {
        HStack {
            Text(landMark.name)
        }
    }
}

//#Preview {
//    LandmarkRow(landMark: landmarks[0])
//}
