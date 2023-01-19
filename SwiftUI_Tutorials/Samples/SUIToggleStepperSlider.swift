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

    @State private var stepperValue = 0

    @State private var sliderValue = 0.0

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Toggles")
                    .fontWeight(.heavy)
                    .padding()

                Toggle("Wi-fi", isOn: $wifi)

                Toggle("Bluetooth", isOn: $bluetooth)

                Toggle(isOn: $hotspot) {
                    Label("Hotspot", systemImage: "personalhotspot")
                        .foregroundColor(.green)
                }

                Text("Your connections is: \(wifi ? "Wi-Fi, " : "")\(bluetooth ? "Bluetooth, " : "")\(hotspot ? "Hotspot" : "")")
            }

            Divider()
            Text("Spacer")
                .fontWeight(.heavy)
                .padding()

            Stepper(value: $stepperValue,
                    in: 0...100,
                    step: 10) {
                Label {
                    Text("Number")
                        .fontWeight(.thin)
                    Text("\(stepperValue)")
                        .bold()
                } icon: {
                    Image(systemName: "digitalcrown.horizontal.arrow.counterclockwise.fill")
                }
            }

            Divider()

            Text("Slider")
                .fontWeight(.heavy)
                .padding()
            Slider(value: $sliderValue,
                   in: 100...1000,
                   step: 50) {
                Text("Slider")
            } minimumValueLabel: {
                Image(systemName: "sun.min")
            } maximumValueLabel: {
                Image(systemName: "sun.min.fill")
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
