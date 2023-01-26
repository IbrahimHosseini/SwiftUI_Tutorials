//
//  ProfileHost.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/26/23.
//

import SwiftUI

struct ProfileHost: View {

    @Environment(\.editMode) var editMode
    @EnvironmentObject private var modelDate: ModelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            HStack{
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelDate.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }

            if editMode?.wrappedValue == .inactive {
                ProfileSummery(profile: modelDate.profile)
            } else  {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelDate.profile
                    }
                    .onDisappear {
                        modelDate.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
