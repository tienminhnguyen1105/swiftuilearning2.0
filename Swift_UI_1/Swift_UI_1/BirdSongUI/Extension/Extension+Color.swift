//
//  Extension+Color.swift
//  Birdsong_SwiftUI
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        var rgb: UInt64 = 0
        
        // Handle color codes with a hash at the beginning
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            Scanner(string: hexColor).scanHexInt64(&rgb)
        } else {
            Scanner(string: hex).scanHexInt64(&rgb)
        }
        
        let red, green, blue, alpha: Double
        
        switch hex.count {
        case 7: // #RRGGBB
            red = Double((rgb >> 16) & 0xFF) / 255.0
            green = Double((rgb >> 8) & 0xFF) / 255.0
            blue = Double(rgb & 0xFF) / 255.0
            alpha = 1.0
        case 9: // #RRGGBBAA
            red = Double((rgb >> 24) & 0xFF) / 255.0
            green = Double((rgb >> 16) & 0xFF) / 255.0
            blue = Double((rgb >> 8) & 0xFF) / 255.0
            alpha = Double(rgb & 0xFF) / 255.0
        default:
            red = 0
            green = 0
            blue = 0
            alpha = 1.0
        }
        
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}

