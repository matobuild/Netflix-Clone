//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by kittawat phuangsombat on 2022/9/4.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
