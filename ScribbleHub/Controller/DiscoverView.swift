//
//  HomeView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/29/23.
//

import SwiftUI

struct DiscoverView: View {
    
    @State private var demoArticles = Articles.examples()
    
    @State private var searchTerm = ""
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack(spacing: 0) {
                        
                        HStack {
                            Button(action: {}){
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .opacity(0.6)
                            }
                            .foregroundColor(CustomColors.mixColor)
                            .padding(.leading, 10)
                            .padding(.top, 7)
                            .padding(.bottom, 7)
                            
                            
                            CustomTextField(text: $searchTerm, placeholder: "Search for Articles", placeholderColor: CustomColors.mixColor.opacity(0.5))
                            
                        }
                        .background(.opacity(0.05))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.leading)
                        
                        Button(action: {}){
                            Image(systemName: "slider.horizontal.2.square")
                                .resizable()
                                .frame(width: 40,height: 40)
                                .foregroundColor(CustomColors.mixColor).opacity(0.7)
                        }
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    }
                    
                    Text("Most Popular Articles")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ArticleView(demoData: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(4)
                            }
                        }
                        
                    }
                    .padding(.init(top: 0, leading: 7, bottom: 8, trailing: 7))
                    
                    
                    Text("Explore By Topics")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ExploreView(demodata: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(4)
                            }
                        }
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 8, trailing: 10))
                    
                    Text("Explore by Writers")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ExploreView(demodata: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(4)
                            }
                        }
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 8, trailing: 10))
                }
                .navigationBarItems(leading:
                                        HStack {
                    Image("image1")
                        .frame(width: 30, height: 40, alignment: .center)
                        .padding(0)
                    Text("Discover")
                        .font(.system(size: 20))
                }
                )
                
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {}
                        ) {
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                    
                }
            }
        }
    }
}


struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
