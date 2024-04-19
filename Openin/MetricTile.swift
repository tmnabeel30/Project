//
//  MetricTile.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//


import SwiftUI

struct MetricTile: View {
    let value: Any
    let label: String

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.title)
            Text(label)
                .font(.caption)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

