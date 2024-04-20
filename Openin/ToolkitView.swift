//
//  AnalyticsView.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI

struct Toolkit: View {
    var body: some View {
        TabView {
            NavigationView {
                Text("Links")
                    .tabItem {
                        Image(systemName: "link")
                        Text("Links")
                    }
            }
            NavigationView {
                Text("Courses")
                    .tabItem {
                        Image(systemName: "book")
                        Text("Courses")
                    }
            }
            NavigationView {
                Text("Add")
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("Add")
                    }
            }
            NavigationView {
                Text("Campaigns")
                    .tabItem {
                    Image(systemName: "megaphone")
                    Text("Campaigns")
                }
            }
            NavigationView {
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
        }
        .accentColor(.blue) // Set the accent color to blue
        .tabViewStyle(DefaultTabViewStyle())
    }
}

