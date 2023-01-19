//
//  SUIMenu.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIMenu: View {

    @State private var appleProductSelected = ""

    let mac = URL(string: "https://apple.com/mac")!
    let iPhone = URL(string: "https://apple.com/iphone")!
    let watch = URL(string: "https://apple.com/watch")!

    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(spacing: 32) {
                Link(destination: mac) {
                    Label("Mac", systemImage: "macpro.gen3.fill")
                }

                Link(destination: iPhone) {
                    Label("iPhone", systemImage: "iphone")
                }

                Link(destination: watch) {
                    Label("Watch", systemImage: "applewatch.watchface")
                }
            }

            Divider()

            HStack {
                Menu {
                    Button {
                        iPhoneSelected()
                    } label: {
                        Label("iPhone", systemImage: "iphone")
                    }

                    Button {
                       iPadSelected()
                    } label: {
                        Label("iPad", systemImage: "ipad")
                    }

                    Menu {
                        Button {
                            macSelected()
                        } label: {
                            Label("Mac Pro", systemImage: "macpro.gen2.fill")
                        }

                        Button {
                            macSelected()
                        } label: {
                            Label("Macbook", systemImage: "macbook.and.ipad")
                        }
                    } label: {
                        Label("Mac", systemImage: "macpro.gen3.fill")
                    }

                    Button {
                        watchSelected()
                    } label: {
                        Label("Watch", systemImage: "applewatch.watchface")
                    }
                } label: {
                    Label("Select Apple Product", systemImage: "apple.logo")
                        .fontWeight(.heavy)
                        .foregroundColor(.cyan)
                }

                Spacer()

                Text(appleProductSelected)

            }
            .padding()

        }
        .padding()
    }

    func iPhoneSelected() {
        appleProductSelected = "iPhone"
    }

    func iPadSelected() {
        appleProductSelected = "iPad"
    }

    func macSelected() {
        appleProductSelected = "Mac"
    }

    func watchSelected() {
        appleProductSelected = "Watch"
    }

}

struct SUIMenu_Previews: PreviewProvider {
    static var previews: some View {
        SUIMenu()
    }
}
