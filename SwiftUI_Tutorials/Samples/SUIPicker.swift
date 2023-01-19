//
//  SUIPicker.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/19/23.
//

import SwiftUI

struct SUIPicker: View {
    @State private var message = ""
    @State private var selectedColor = Color.gray
    @State private var choice = 0.0

    var body: some View {
        VStack {

            Picker("", selection: $message) {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy": message = "Be happy and joyous"
                case "sad": message = "Life can be a struggle at time"
                case "bored": message = "Look for your purpose"
                default: break
                }
            }
            Text(message)

            Spacer()

            Rectangle()
                .fill(selectedColor)
                .frame(height: 300)

            Picker("Favorite color",
                   selection: $selectedColor) {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Yellow").tag(Color.yellow)
            } .pickerStyle(SegmentedPickerStyle())

            Spacer()

            Picker("Picker", selection: $choice) {
                Text("Bird").tag(1.5)
                Text("Cat").tag(2.8364)
                Text("Dog").tag(9.43)
                Text("Lizard").tag(4.63)
                Text("Hamster").tag(5.24)
            }
            .pickerStyle(SegmentedPickerStyle())

            Text("Your choice is \(choice)")

        }
        .padding()
    }
}

struct SUIPicker_Previews: PreviewProvider {
    static var previews: some View {
        SUIPicker()
    }
}
