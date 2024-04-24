//
//  File.swift
//  Openin
//
//  Created by Nabeel on 20/04/24.
//

import SwiftUI

struct SubBar: View {
    @State private var selectedButton: Int? = nil

    var body: some View {
        HStack {
            Button(action: {
                selectedButton = 0
            }) {
                Text("Top Links")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(selectedButton == 0 ? .white : .gray)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(selectedButton == 0 ? Color(red: 0.054, green: 0.435, blue: 1) : Color.clear)
                    .cornerRadius(18)
            }

            Button(action: {
                selectedButton = 1
            }) {
                Text("Recent Links")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(selectedButton == 1 ? .white : .gray)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(selectedButton == 1 ? Color(red: 0.054, green: 0.435, blue: 1) : Color.clear)
                    .cornerRadius(18)
            }

            Spacer()

            Button(action: {
                selectedButton = 2
            }) {
                Image("SearchIcon")
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(selectedButton == 2 ? .white : .gray)
                    .background(selectedButton == 2 ? Color(red: 0.054, green: 0.435, blue: 1) : Color.clear)
                    .frame(width: 36, height: 36)
            }
        }
        .frame(width: 328, height: 36)
    }
}
