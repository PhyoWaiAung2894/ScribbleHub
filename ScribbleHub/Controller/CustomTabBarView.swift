//
//  CustomTabBarView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/31/23.
//

import SwiftUI

struct CustomTabBarView: View {
    
    @Binding var selectedTab: StateControl.Tabs
    
    @State var houseimage = "house.fill"
    @State var housetext = "Home"
    @State var discoverimage = "safari"
    @State var discovertext = ""
    @State var addImage = "plus.circle.fill"
    @State var bookmarImage = "book.closed"
    @State var bookmarText = ""
    @State var profileImage = "person"
    @State var profileText = ""
    
    
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                selectedTab = .home
                
            } label: {
                
                GeometryReader { geo in
                    
                    VStack (alignment: .center, spacing: 4) {
                        
                        Image(systemName: houseimage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(housetext)
                            .font(Fonts.tabBar)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    
                }
            }
            .tint(CustomColors.mixColor)
            
            Button {
                selectedTab = .discover
            } label: {
                
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: discoverimage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(discovertext)
                            .font(Fonts.tabBar)
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(CustomColors.mixColor)
            
            Button {
                selectedTab = .add
            } label: {
                
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: addImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(CustomColors.mixColor)
            
            Button {
                selectedTab = .bookmark
            } label: {
                
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: bookmarImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(bookmarText)
                            .font(Fonts.tabBar)
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(CustomColors.mixColor)
            
            Button {
                selectedTab = .profile
            } label: {
                
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: profileImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(profileText)
                            .font(Fonts.tabBar)
                    }.frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(CustomColors.mixColor)
        }.frame(height: 60)
            .onChange(of: selectedTab, initial: true) { oldValue, newValue in
                if newValue == .home {
                    houseimage = "house.fill"
                    housetext = "Home"
                }else {
                    houseimage = "house"
                    housetext = ""
                }
                
                if newValue == .discover {
                    discoverimage = "safari.fill"
                    discovertext = "Discover"
                }else {
                    discoverimage = "safari"
                    discovertext = ""
                }
                
                if newValue == .add {
                    addImage = "plus.circle.fill"
                }
                
                if newValue == .bookmark {
                    bookmarImage = "book.closed.fill"
                    bookmarText = "BookMark"
                }else {
                    bookmarImage = "book.closed"
                    bookmarText = ""
                }
                
                if newValue == .profile {
                    profileImage = "person.fill"
                    profileText = "Profile"
                }else {
                    profileImage = "person"
                    profileText = ""
                }
            }
    }
}


