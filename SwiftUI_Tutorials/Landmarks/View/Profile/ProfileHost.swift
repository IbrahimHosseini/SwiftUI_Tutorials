//
//  ProfileHost.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/26/23.
//

import SwiftUI

struct ProfileHost: View {

    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummery(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
