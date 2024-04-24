//
//  JsonData.swift
//  Openin
//
//  Created by Nabeel on 20/04/24.
//

import SwiftUI


struct Root: Codable {

    
    
    let today_clicks: Int
    let top_location: String
    let top_source: String
    let total_clicks: Int
    let total_links: Int
//    let support_whatsapp_number:Int
//    let top_links: [toplinks]
    
    
//    struct toplinks: Codable {
//        let smart_link: String
//        let web_link: String
//        let total_clicks:Int
//        let original_image:String
//        let created_at:String
//    }
}

//struct Root: Codable {
//    
//    
//    struct RecentLink: Codable {
//        let app: String
//        let created_at: String
//        let domain_id: String
//        let is_favourite: Bool
//        let original_image: String
//        let smart_link: String
//        let thumbnail: String?
//        let times_ago: String
//        let title: String
//        let total_clicks: Int
//        let url_id: Int
//        let url_prefix: String?
//        let url_suffix: String
//        let web_link: String
//    }
//    
//    struct TopLink: Codable {
//        let app: String
//        let created_at: String
//        let domain_id: String
//        let is_favourite: Bool
//        let original_image: String
//        let smart_link: String
//        let thumbnail: String?
//        let times_ago: String
//        let title: String
//        let total_clicks: Int
//        let url_id: Int
//        let url_prefix: String
//        let url_suffix: String
//        let web_link: String
//    }
//}


//// Step 1: Define Swift model
//struct JSONData: Codable {
//    let applied_campaign: Int
//    let data: Data
//    let extra_income: String
//    let links_created_today: Int
//    let message: String
//    let startTime: String
//    let status: Int
//    let statusCode: Int
//    let support_whatsapp_number: Int
//    let today_clicks: Int
//    let top_location: String
//    let top_source: String
//    let total_clicks: Int
//    let total_links: Int
//
//    struct Data: Codable {
//        let favourite_links: [FavouriteLink]
//        let overall_url_chart: [String: Int]
//        let recent_links: [Link]
//        let top_links: [Link]
//    }
//
//    struct FavouriteLink: Codable {
//        let app: String
//        let createdAt: String
//        let domainID: String
//        let isFavourite: Int
//        let originalImage: String
//        let smartLink: String
//        let thumbnail: String?
//        let timesAgo: String
//        let title: String
//        let totalClicks: Int
//        let urlID: Int
//        let urlPrefix: String?
//        let urlSuffix: String
//        let webLink: String
//    }
//
//    struct Link: Codable {
//        let app: String
//        let createdAt: String
//        let domainID: String
//        let isFavourite: Int
//        let originalImage: String
//        let smartLink: String
//        let thumbnail: String?
//        let timesAgo: String
//        let title: String
//        let totalClicks: Int
//        let urlID: Int
//        let urlPrefix: String?
//        let urlSuffix: String
//        let webLink: String
//    }
//}








