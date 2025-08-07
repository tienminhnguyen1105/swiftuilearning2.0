//
//  SearchView.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 06/08/2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    
    var body: some View {
        VStack{
            TextField("  Search your bird", text: $searchText)
                .frame(height: 58.0)
                .cornerRadius(12)
                .background(Color("#F0F0F0")) // Màu nền của thanh tìm kiếm
                .foregroundColor(Color("#9D9D9D")) // Màu
        }
        .lineSpacing(10)
        .cornerRadius(12)
    }
}

#Preview {
    SearchView()
}
