//
//  Section 2 Draw the badge background.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 08/08/2025.
//

import SwiftUI

struct Section_2_Draw_the_badge_background: View {
    var body: some View {
           GeometryReader { geometry in
               Path { path in
                   var width: CGFloat = min(geometry.size.width, geometry.size.height)
                   let height = width
                   let xScale: CGFloat = 0.832
                   let xOffset = (width * (1.0 - xScale)) / 2.0
                   width *= xScale
                   path.move(
                       to: CGPoint(
                           x: width * 0.95 + xOffset,
                           y: height * (0.20 + HexagonParameters.adjustment)
                       )
                   )


                   HexagonParameters.segments.forEach { segment in
                       path.addLine(
                           to: CGPoint(
                               x: width * segment.line.x + xOffset,
                               y: height * segment.line.y
                           )
                       )


                       path.addQuadCurve(
                           to: CGPoint(
                               x: width * segment.curve.x + xOffset,
                               y: height * segment.curve.y
                           ),
                           control: CGPoint(
                               x: width * segment.control.x + xOffset,
                               y: height * segment.control.y
                           )
                       )
                   }
               }
               .fill(.black)
           }
       }
   }

#Preview {
    Section_2_Draw_the_badge_background()
}
