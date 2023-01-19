//
//  SUIGestures.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIGestures: View {

    @State private var changeMe = false
    @State private var pressingState = "None"

    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1

    @State private var degree = 0.0

    @State private var circlePosition = CGPoint(x: 150, y: 150)
    @State private var circleLabel = "150, 150"

    var body: some View {
        VStack {

            Rectangle()
                .frame(width: 300, height: 100)
                .foregroundColor(changeMe ? .red : .green)
                .onTapGesture(count: 2) {
                    changeMe.toggle()
                }
                .onLongPressGesture(minimumDuration: 2,
                                    maximumDistance: 2,
                                    pressing: { pressing in
                    pressingState = pressing ? "Pressing" : "None"
                }) {
                    changeMe.toggle()
                }
            Text("Pressing state is \(pressingState)")

            Divider()
            HStack {
                Image(systemName: "star.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.pink)
                    .scaleEffect(tempValue + finalValue)
                    .gesture(MagnificationGesture()
                        .onChanged { amount in
                            tempValue = amount - 1
                        }
                        .onEnded { amount in
                            finalValue += tempValue
                            tempValue = 0
                        }
                    )

                Divider()

                Image(systemName: "steeringwheel")
                    .font(.system(size: 100))
                    .foregroundColor(.black)
                    .rotationEffect(Angle.degrees(degree))
                    .gesture(RotationGesture()
                        .onChanged { angle in
                            degree = angle.degrees
                        }
                        .onEnded{ amount in
                            finalValue += tempValue
                            tempValue = 0
                        }
                    )
            }

            Divider()
            HStack {
                Circle()
                    .fill(.indigo)
                    .frame(width: 100, height: 100)
                    .opacity(0.9)
                    .position(circlePosition)
                    .gesture(DragGesture()
                        .onChanged { value in
                            circlePosition = value.location
                            circleLabel = "\(Int(value.location.x)), \(Int(value.location.y))"
                        }
                    )

                Divider()

                Text(circleLabel)
                    .padding()
            }

        }
    }
}

struct SUIGestures_Previews: PreviewProvider {
    static var previews: some View {
        SUIGestures()
    }
}
