//
//  SUITextFields.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/18/23.
//

import SwiftUI

struct SUITextFields: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var message = ""
    @FocusState private var dismissKeyboard: Bool

    var body: some View {
        VStack(spacing: 16) {
            TextField("Enter Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textContentType(.givenName)
                .submitLabel(.next)
                .focused($dismissKeyboard)

            TextField("Enter Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textContentType(.emailAddress)
                .submitLabel(.next)

            SecureField("Enter Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
                .submitLabel(.next)

            TextEditor(text: $message)
                .border(.gray, width: 1)
                .padding()
                .disableAutocorrection(true)
                .submitLabel(.send)
                .focused($dismissKeyboard)

            Text("\(name), \(email), \(password), \(message)")

            Button("Done") {
                dismissKeyboard = false
            }
        }
        .padding()
        .background(ignoresSafeAreaEdges: .all)

    }
}

struct SUITextFields_Previews: PreviewProvider {
    static var previews: some View {
        SUITextFields()
    }
}
