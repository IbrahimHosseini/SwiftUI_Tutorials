//
//  SUIToggleStepperSlider.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIToggleStepperSlider: View {
    @State private var wifi = false
    @State private var bluetooth = true
    @State private var hotspot = true

    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 16) {
                Toggle("Wi-fi", isOn: $wifi)

                Toggle("Bluetooth", isOn: $bluetooth)

                Toggle(isOn: $hotspot) {
                    Label("Hotspot", systemImage: "personalhotspot")
                        .foregroundColor(.green)
                }

                Text("Your connections is: \(wifi ? "Wi-Fi, " : "")\(bluetooth ? "Bluetooth, " : "")\(hotspot ? "Hotspot" : "")")
            }

            VStack {

            }
        }
        .padding()
    }
}

struct SUIToggleStepperSlider_Previews: PreviewProvider {
    static var previews: some View {
        SUIToggleStepperSlider()
    }
}
