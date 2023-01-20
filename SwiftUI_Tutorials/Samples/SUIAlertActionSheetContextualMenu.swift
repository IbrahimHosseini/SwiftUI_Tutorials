//
//  SUIAlertActionSheetContextualMenu.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIAlertActionSheetContextualMenu: View {
    @State private var showAlert = false

    @State private var contextualText = "Show"

    @State private var selectedColor = Color.black

    var body: some View {
        VStack(alignment: .leading) {
            Text("Alert")
                .font(.largeTitle)
                .bold()

            Button {
                showAlert.toggle()
            } label: {
                Label("Show", systemImage: "iphone")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Warning"),
                      dismissButton: .destructive(Text("Cancel")))
            }
            .padding()

            Divider()

            Text("Action Sheet")
                .font(.largeTitle)
                .bold()

            Button("Show") {
                showAlert.toggle()
            }
            .confirmationDialog("", isPresented: $showAlert, actions: {
                Button("iPad") {

                }

                Button("iPhone") {

                }

                Button("Mac") {

                }

            })
            .padding()

            Divider()

            Text("Contextual Menu")
                .font(.largeTitle)
                .bold()

            Text(contextualText)
                .contextMenu {
                    Button("Copy") {

                    }

                    Button("Edit") {
                        contextualText = "Edited"
                    }

                    Button("Change Color") {
                        let color: [Color] = [.red, .green, .blue, .purple, .pink]
                        selectedColor = color.randomElement()!
                    }
                }
                .foregroundColor(selectedColor)
                .padding()

        }
        .padding()
    }
}

struct SUIAlertActionSheetContextualMenu_Previews: PreviewProvider {
    static var previews: some View {
        SUIAlertActionSheetContextualMenu()
    }
}
