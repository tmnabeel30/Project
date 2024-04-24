//
//  SampleData.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import Foundation
import Charts

// Sample data
let chartData: [ChartData] = [
    ChartData(date: Date().addingTimeInterval(-604800), clicks: 20),
    ChartData(date: Date().addingTimeInterval(-518400), clicks: 50),
    ChartData(date: Date().addingTimeInterval(-432000), clicks: 70),
    ChartData(date: Date().addingTimeInterval(-345600), clicks: 40),
    ChartData(date: Date().addingTimeInterval(-259200), clicks: 80),
    ChartData(date: Date().addingTimeInterval(-172800), clicks: 60),
    ChartData(date: Date().addingTimeInterval(-86400), clicks: 75)
]

struct LinkData: Identifiable {
    let id: UUID = UUID()
    var smartLink: String
    var productLink: String
    var thumbnailLink: String
    var totalClicks: Int
    var createdAt: String
}
var linkDataArray: [LinkData] = [
    LinkData(smartLink: "smart_link_1", productLink: "link_1", thumbnailLink: "thumbnail_1", totalClicks: 10, createdAt: "2023-04-21"),
    LinkData(smartLink: "smart_link_1", productLink: "link_1", thumbnailLink: "thumbnail_1", totalClicks: 10, createdAt: "2023-04-21"),
    LinkData(smartLink: "smart_link_1", productLink: "link_1", thumbnailLink: "thumbnail_1", totalClicks: 10, createdAt: "2023-04-21"),
    LinkData(smartLink: "smart_link_1", productLink: "link_1", thumbnailLink: "thumbnail_1", totalClicks: 10, createdAt: "2023-04-21"),


    // Add more instances as needed
]
