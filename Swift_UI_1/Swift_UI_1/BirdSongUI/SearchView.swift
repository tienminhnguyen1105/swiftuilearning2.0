//
//  SearchView.swift
//  Birdsong_SwiftUI
//


import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    
    var body: some View {
        VStack{
            TextField("  Search your bird", text: $searchText)
                .frame(height: 58.0)
                .cornerRadius(12)
                .background(Color(hex: "#F0F0F0")) // Màu nền của thanh tìm kiếm
                .foregroundColor(Color(hex: "#9D9D9D")) // Màu
        }
        .lineSpacing(10)
        .cornerRadius(12)
    }
}

#Preview {
    SearchView()
}
