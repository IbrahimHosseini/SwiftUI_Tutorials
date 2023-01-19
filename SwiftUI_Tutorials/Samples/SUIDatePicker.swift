//
//  SUIDatePicker.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/19/23.
//

import SwiftUI

struct SUIDatePicker: View {
    @State private var date = Date.now

    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponent = DateComponents(year: 2023, month: 01, day: 01)
        let endComponent = DateComponents(year: 2023, month: 12, day: 31)
        return calendar.date(from: startComponent)!...calendar.date(from: endComponent)!
    }()

    var formater = DateFormatter()


    var body: some View {


        VStack {

            DatePicker("Today",
                       selection: $date,
                       in: dateRange,
                       displayedComponents: [.date])

                .datePickerStyle(.graphical)
                .onAppear {
                    formater.dateStyle = .long
                }

            Text("My date is \(formater.string(from: date))")

            Spacer()

            DatePicker("Current Time",
                       selection: $date,
                       displayedComponents: [.hourAndMinute])
                .datePickerStyle(.compact)

        }
        .padding()
    }
}

struct SUIDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SUIDatePicker()
    }
}
