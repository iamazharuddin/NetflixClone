//
//  YoutubeSearchResponse.swift
//  NetflixClone
//
//  Created by Azharuddin 1 on 02/09/23.
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
