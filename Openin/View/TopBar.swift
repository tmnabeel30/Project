//
//  TopBar.swift
//  Openin
//
//  Created by Nabeel on 24/04/24.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack{
            Text("Dashboard")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.white)
                .padding(.bottom, 10)
                .padding()

            Spacer()
            Button(action: {
                // Action to perform when the button is tapped
            }) {
                Image("SettingButton")
                    .padding(.bottom, 10)
                    .padding()
            }
        }
    }
}

#Preview {
    TopBar()
}
