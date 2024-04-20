//
//  JsonData.swift
//  Openin
//
//  Created by Nabeel on 20/04/24.
//

import SwiftUI




// Step 1: Define Swift model
struct JSONData: Codable {
    let appliedCampaign: Int
    let data: Data
    let extraIncome: String
    let linksCreatedToday: Int
    let message: String
    let startTime: String
    let status: Int
    let statusCode: Int
    let supportWhatsAppNumber: Int
    let todayClicks: Int
    let topLocation: String
    let topSource: String
    let totalClicks: Int
    let totalLinks: Int

    struct Data: Codable {
        let favouriteLinks: [FavouriteLink]
        let overallURLChart: [String: Int]
        let recentLinks: [Link]
        let topLinks: [Link]
    }

    struct FavouriteLink: Codable {
        let app: String
        let createdAt: String
        let domainID: String
        let isFavourite: Int
        let originalImage: String
        let smartLink: String
        let thumbnail: String?
        let timesAgo: String
        let title: String
        let totalClicks: Int
        let urlID: Int
        let urlPrefix: String?
        let urlSuffix: String
        let webLink: String
    }

    struct Link: Codable {
        let app: String
        let createdAt: String
        let domainID: String
        let isFavourite: Int
        let originalImage: String
        let smartLink: String
        let thumbnail: String?
        let timesAgo: String
        let title: String
        let totalClicks: Int
        let urlID: Int
        let urlPrefix: String?
        let urlSuffix: String
        let webLink: String
    }
}








