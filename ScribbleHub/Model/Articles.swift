//
//  Articles.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/29/23.
//

import Foundation

struct Articles: Identifiable {
    let id = UUID()
    
    let writerName: String
    let date: Date
    let imageName: String
    let description: String
    
    static func examples() -> [Articles] {
        [Articles(writerName: "Bella", date: Date.now, imageName: "book2", description: "Ways To increase your Reading Efficiently"),
         Articles(writerName: "Isable", date: Date.now, imageName: "book2", description: "10 Ways To Increase your teamwork power"),
         Articles(writerName: "Louis", date: Date.now, imageName: "book2", description: "Way to improve working environment"),
        ]
    }
    
    static func example1() -> Articles {
        Articles(writerName: "Bella", date: Date.now, imageName: "article1", description: "Ways To increase your reading Efficiently")
    }
}
