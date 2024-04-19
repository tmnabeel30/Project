//
//  LinkRow.swift .swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI

struct LinkRow: View {
    let link: String

    var body: some View {
        HStack {
            Image(systemName: "link")
            Text("Sample link name...")
            Spacer()
            Text("2323\nClicks")
                .multilineTextAlignment(.trailing)
        }
        .padding()
    }
}
