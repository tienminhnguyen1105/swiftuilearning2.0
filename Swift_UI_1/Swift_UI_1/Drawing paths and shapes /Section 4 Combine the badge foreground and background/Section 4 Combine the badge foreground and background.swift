//
//  Section 4 Combine the badge foreground and background.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 08/08/2025.
//

import SwiftUI

struct Section_4_Combine_the_badge_foreground_and_background: View {
    var badgeSymbols: some View {
          ForEach(0..<8) { index in
              RotatedBadgeSymbol(
                  angle: .degrees(Double(index) / Double(8)) * 360.0
              )
          }
          .opacity(0.5)
      }
      
      var body: some View {
          ZStack {
              Section_2_Draw_the_badge_background()
              
              GeometryReader { geometry in
                  badgeSymbols
                      .scaleEffect(1.0 / 4.0, anchor: .top)
                      .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
              }
          }
          .scaledToFit()
      }
  }

#Preview {
    Section_4_Combine_the_badge_foreground_and_background()
}
