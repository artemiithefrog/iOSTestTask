//
//  MediaModel.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import Foundation

struct MediaItem: Identifiable, Codable {
    let id = UUID()
    let image: String
    let video: String
    
    enum CodingKeys: String, CodingKey {
        case image
        case video
    }
}

struct MediaResponse: Codable {
    let media: [MediaItem]
}
