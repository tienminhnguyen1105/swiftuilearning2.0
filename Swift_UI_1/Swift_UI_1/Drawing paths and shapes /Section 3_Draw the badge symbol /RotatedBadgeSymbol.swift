//
//  RotatedBadgeSymbol.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 08/08/2025.
//
import SwiftUI


struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        Section_3_Draw_the_badge_symbol_()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
