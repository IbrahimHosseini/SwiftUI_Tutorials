//
//  SUIText.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/14/23.
//

import SwiftUI

struct SUIText: View {
    var body: some View {

        VStack {
            Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                .fontWeight(.bold)
                .foregroundColor(.cyan)
                .font(.custom("Nunito", size: 25))
                .multilineTextAlignment(.center)
                .lineLimit(5)
                .truncationMode(.middle)
                .lineSpacing(15)
                .padding()
                .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 5, x: 0, y: 8)

            //Displaying Markdown Text
            Text("**This is how you bold a text**. *This is how you make text italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
                .font(.title)
                .padding()
        }



    }
}

struct SUIText_Previews: PreviewProvider {
    static var previews: some View {
        SUIText()
    }
}
