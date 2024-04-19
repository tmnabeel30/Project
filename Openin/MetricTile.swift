//
//  MetricTile.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//


import SwiftUI

struct MetricTile: View {
    let value: String
    let label: String
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
                  
                   
                       Image(imageName)
                           .resizable()
                           .frame(width: 32, height: 32)
                           .foregroundColor(.purple)
//                           .alignmentGuide(.leading) { _ in
//                                       0 // Align to the leading edge of the containing view
//                                   }
            
            VStack(alignment: .leading, spacing: 5) {

                       Text(value)
                           .font(.system(size: 16, weight: .bold))
                           .font(.largeTitle)
                          
                           
                       
                       Text(label)
                           .font(.system(size: 14, weight: .light))

                           .font(.body)
                           .foregroundColor(.gray)
                   }
               }
//               .padding()
               .frame(width: 120, height: 120) // Make the whole metricTitle square
               .background(Color.white) // Set background color of the tile to white
                .cornerRadius(10)
           }
}


