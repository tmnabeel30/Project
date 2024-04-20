//
//  File.swift
//  Openin
//
//  Created by Nabeel on 20/04/24.
//

import SwiftUI

struct SubBar: View {
    var body: some View {
        HStack {
            Button(action: {
                // Action for Top Links
            }) {
                Text("Top Links")
                    .font(.system(size: 16, weight: .semibold))

                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.054, green: 0.435, blue: 1))
                    .cornerRadius(18)
            }


            Button(action: {
                // Action for Recent Links
            }) {
                Text("Recent Links")
                    .font(.system(size: 16, weight: .semibold))

                    .foregroundColor(.gray)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.clear)
                    .cornerRadius(18)
            }

            Spacer()

            Button(action: {
                // Action for Search
            }) {
                Image("SearchIcon")
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                    .frame(width: 36, height: 36)
            }
        }
        .padding()
        .frame(width: 328, height: 36)
    }
}
