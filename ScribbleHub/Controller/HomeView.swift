//
//  HomeView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/29/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var demoArticles = Articles.examples()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Learn and become a great writer.Start your journey today with Us!")
                                    .frame(width: 200)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .padding(.leading, 10)
                                    .padding(.top, 10)
                                    .font(.system(size: 13))
                                    .padding(.bottom)
                                
                                Button(action: {}, label: {
                                    Text("Know More")
                                        .font(.custom("TimeNewRoman", size: 10))
                                        .foregroundColor(CustomColors.mixColor)
                                        .fontWeight(.bold)
                                        .padding(8)
                                        .background(Color.white)
                                        .cornerRadius(20)
                                })
                                .padding(.leading, 20)
                                .padding(.bottom, 20)
                            }
                            Spacer()
                        }
                    }
                    .background(CustomColors.mixColor)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Text("Trending Articles")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ArticleView(demoData: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(.trailing, 8)
                            }
                        }
                        
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 8, trailing: 10))
                    
                    
                    Text("Recent Articles")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ArticleView(demoData: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 8, trailing: 10))
                    
                    Text("Popular Articles")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(demoArticles) { article in
                                ArticleView(demoData: article)
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 8, trailing: 10))
                }
            }
            .navigationBarItems(leading:
                                    HStack {
                Image("image1")
                    .frame(width: 30, height: 40, alignment: .center)
                    .padding(0)
                Text("ScribbleHub")
                    .font(Font.custom("Sevillana-Regular", size: 20))
                    .fontWeight(.bold)
                    .padding(0)
            }
            )
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}
                    ) {
                        Image(systemName: "bell")
                            .foregroundColor(.black)
                            .padding(0)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}){
                        Image(systemName: "bookmark")
                            .foregroundColor(.black)
                            .padding(.trailing, 0)
                            .padding(.leading, 0)
                    }
                }
            }
    
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
