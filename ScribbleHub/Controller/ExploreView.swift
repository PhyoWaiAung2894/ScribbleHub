//
//  ExploreView.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/30/23.
//

import SwiftUI

struct ExploreView: View {
    
    @State var demodata: Articles
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(demodata.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 5)
        }
        .overlay(
            Text(demodata.writerName)
                .font(.system(size: 10))
                .foregroundColor(.white)
                .padding(7)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                .background(Color.black.opacity(0.5)),
            alignment: .bottom

        ).clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(demodata: Articles.example1()).padding(10)
    }
}
