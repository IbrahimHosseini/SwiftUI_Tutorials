//
//  SUIButton.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/18/23.
//

import SwiftUI

struct SUIButton: View {

    @State var colorMe = false

    @State private var selectedColor = Color.gray

    @State private var message = ""

    var body: some View {
        VStack(spacing: 32) {
            
            Spacer()
            Button("Tap on me to change the color") {
                colorMe.toggle()
            }
            .fontWeight(.black)
            .foregroundColor(colorMe ? .gray : .blue)
            
            Button {
                colorMe.toggle()
            } label: {
                Text("Tap on me in different way")
                    .fontWeight(.bold)
                    .foregroundColor(colorMe ? .gray : .indigo)
                    .padding()
                    .border(.indigo, width: 2)
            }

            HStack(spacing: 16) {
                Button {
                    colorMe.toggle()
                } label: {
                    Label("Play", systemImage: "play.fill")
                        .font(.largeTitle)
                        .foregroundColor(colorMe ? .gray : .pink)
                        .padding()
                        .border(.pink, width: 2)
                }

                Button {
                    colorMe.toggle()
                } label: {
                    Image("hotspot")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .foregroundColor(colorMe ? .gray: .pink)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.teal, lineWidth: 4))
                }

                Button {
                    colorMe.toggle()
                } label: {
                    Label("Pause", systemImage: "pause.fill")
                        .font(.largeTitle)
                        .foregroundColor(colorMe ? .gray :  .pink)
                        .padding()
                        .border(.pink, width: 2)
                }
            }

            Text(message)
            Picker("", selection: $message) {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy": message = "Be happy and joyous"
                case "sad": message = "Life can be a struggle at time"
                case "bored": message = "Look for your purpose"
                default: break
                }
            }


            Rectangle()
                .fill(selectedColor)

            Picker("Favorite color",
                   selection: $selectedColor) {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Yellow").tag(Color.yellow)
            } .pickerStyle(SegmentedPickerStyle())

        }
        
    }
}

struct SUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SUIButton()
    }
}
