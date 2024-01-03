//
//  ContentView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var selectedTab: Int = 0
    
    @State var selectedTabs: StateControl.Tabs = .home
    
    var body: some View {

        VStack {
            
            switch selectedTabs {
            case .home:
                HomeView()
            case .discover:
                DiscoverView()
            case .add:
                Text("Add")
            case .bookmark:
                Text("Bookmarks")
            case .profile:
                Text("Profile")
            }
            
            CustomTabBarView(selectedTab: $selectedTabs)
        }
    }
}

#Preview {
    ContentView()
}
