//
//  MediaViewModel.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import UIKit
import Combine

class MediaViewModel: ObservableObject {
    @Published var mediaItems: [MediaItem] = []
    private var cancellables = Set<AnyCancellable>()
    private let mediaService = MediaService()

    func loadMedia() {
        mediaService.fetchMedia()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching media: \(error)")
                }
            }, receiveValue: { [weak self] mediaItems in
                self?.mediaItems = mediaItems
            })
            .store(in: &cancellables)
    }
    
    
    func downloadVideo(from url: URL, completion: @escaping (URL?) -> Void) {
        let task = URLSession.shared.downloadTask(with: url) { localUrl, response, error in
            if let localUrl = localUrl {
                let fileManager = FileManager.default
                let destinationUrl = fileManager.temporaryDirectory.appendingPathComponent(url.lastPathComponent)
                try? fileManager.removeItem(at: destinationUrl)
                do {
                    try fileManager.moveItem(at: localUrl, to: destinationUrl)
                    completion(destinationUrl)
                } catch {
                    print("Error moving downloaded file: \(error)")
                    completion(nil)
                }
            } else {
                print("Download error: \(String(describing: error))")
                completion(nil)
            }
        }
        task.resume()
    }
    
    func saveLivePhoto(with localVideoUrl: URL, imageUrl: URL) {
        LivePhoto.generate(from: imageUrl, videoURL: localVideoUrl, progress: { percent in
            print("Progress: \(percent)")
        }, completion: { livePhoto, resources in
            guard let resources = resources else {
                print("Failed to generate Live Photo")
                return
            }
            
            LivePhoto.saveToLibrary(resources) { success in
                if success {
                    print("Live Photo saved successfully")
                } else {
                    print("Failed to save Live Photo to library")
                }
            }
        })
    }


}
