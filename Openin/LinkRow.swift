//
//  LinkRow.swift .swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI

struct LinkRow: View {
    let samplelinkName: String
    let productLink: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("AmazonLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .padding()

                VStack(alignment: .leading) {
                    Text(samplelinkName)
                        .font(.system(size: 14, weight: .regular))
                    Text("22 Aug 2022")
                        .font(.system(size: 12, weight: .light))
                }
                .padding(.leading, 8)

                Spacer()

                VStack {
                    Text("2323")
                        .font(.system(size: 14, weight: .semibold))
                    Text("clicks")
                        .font(.system(size: 12, weight: .light))
                }
                .frame(width: 60, height: 44)
            }
            .background(.white)
            

            ZStack{
                Image("RectangleLink")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                HStack {
                    Text(productLink)
                        .padding(.leading)
                    
                    Spacer() // Push the Button to the right

                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        Image("copyIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 24) // Adjust the maximum width as needed
                    }
                    .padding(.trailing) // Add padding to the right of the Button
                }
            }
            .background(Color(red: 0.65, green: 0.78, blue: 1))
            .frame(height: 40)
            
        }
        .background(.white)
        .cornerRadius(10)

    }
}
