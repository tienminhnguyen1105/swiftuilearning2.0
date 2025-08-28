//
//  ProfileHost.swift
//  Swift_UI_1
//
//  Created by Nguyễn Tiến Minh on 28/08/2025.
//

import SwiftUI


struct ProfileHost: View {
    @State private var draftProfile = Profile.default


    var body: some View {
        Text("Profile for: \(draftProfile.username)")
    }
}


#Preview {
    ProfileHost()
}
