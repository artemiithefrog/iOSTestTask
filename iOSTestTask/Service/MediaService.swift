//
//  MediaService.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import Foundation
import Combine

class MediaService {
    func fetchMedia() -> AnyPublisher<[MediaItem], Error> {
        guard let url = URL(string: "https://wall.appthe.club") else {
            fatalError("Invalid URL")
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: MediaResponse.self, decoder: JSONDecoder())
            .map { $0.media }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
