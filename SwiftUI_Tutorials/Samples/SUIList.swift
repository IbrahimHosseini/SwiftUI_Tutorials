//
//  SUIList.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIList: View {

    let animals = [Animal(id: UUID().uuidString, name: "Cat", icon: "🐈"),
                   Animal(id: UUID().uuidString, name: "Dog", icon: "🦮"),
                   Animal(id: UUID().uuidString, name: "Mouse", icon: "🐁"),
                   Animal(id: UUID().uuidString, name: "Sheep", icon: "🐏"),
                   Animal(id: UUID().uuidString, name: "Parrot", icon: "🦜"),
                   Animal(id: UUID().uuidString, name: "Goldfish", icon: "🐠")]

    let section = ["Section 1", "Section 2"]

    var body: some View {
        VStack {
            List {
                Label {
                    Text("Label with icon")
                } icon: {
                    Image(systemName: "star.fill")
                }

                Text("Label")

                Image(systemName: "gamecontroller.fill")

                Image(systemName: "flag.checkered.2.crossed")

                Label("name", systemImage: "r.joystick.fill")
                    .foregroundColor(.purple)
            }

            List(animals, id: \.id) {
                Text("\($0.icon)   \($0.name)")
            }
        }
    }

}

struct SUIList_Previews: PreviewProvider {
    static var previews: some View {
        SUIList()
    }
}

struct Animal {
    let id: String
    let name: String
    let icon: String
}
