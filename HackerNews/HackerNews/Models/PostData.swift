//
//  PostData.swift
//  HackerNews
//
//  Created by Michael Taranik on 13.07.2024.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    var id: String { return objectID }
    let objectID: String
    let url: String
    let points: Int
    let title: String
}
