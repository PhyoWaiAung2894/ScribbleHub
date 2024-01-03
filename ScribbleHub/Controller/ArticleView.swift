//
//  ArticleView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/29/23.
//

import SwiftUI

struct ArticleView: View {
    let demoData : Articles
    @State var isBookmarked = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack (alignment: .topLeading){
                Image(demoData.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                
                Button(action: {
                    isBookmarked.toggle()
                }){
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .resizable()
                        .foregroundColor(CustomColors.mixColor)
                        .frame(width: 10, height: 15)
                        .padding(10)
                }
            }
            
            Text(demoData.description)
                .font(.system(size: 11, weight: .regular, design: .default))
                .bold()
                .padding(.top, 7)
                .lineLimit(3)
            
            HStack {
                Image("image1")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .clipShape(Circle())
                Text(demoData.writerName)
                    .font(.system(size: 10,weight: .regular, design: .default))
                    .foregroundColor(.gray)
                
                Spacer()
                Text("5 days ago")
                    .font(.system(size: 10,weight: .regular, design: .default))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.gray)
                    .padding(0)
            }

        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(demoData: Articles.example1())
    }
}
