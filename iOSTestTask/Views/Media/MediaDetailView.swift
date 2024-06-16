//
//  MediaDetailView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI
import AVKit
import AmplitudeSwift

struct MediaDetailView: View {
    let mediaItem: MediaItem
    let mediaVM = MediaViewModel()
    let amplitude = Amplitude(configuration: Configuration(
        apiKey: "d30b0c165719bbd4f146040a6906e006"
    ))
    
    @State private var isPlaying = false

    var body: some View {
        VStack {
            if let videoURL = URL(string: mediaItem.video) {
                VideoPlayer(player: AVPlayer(url: videoURL))
                    .cornerRadius(10)
                    .onDisappear {
                        isPlaying = false
                    }
            } else {
                Text("Invalid Video URL")
                    .foregroundColor(.red)
            }

            VStack {
                Button {
                    isPlaying.toggle()
                } label: {
                    if isPlaying {
                        Image(systemName: "pause.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    } else {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    Text(isPlaying ? "Pause" : "Play")
                }
                .padding()

                Button("Download") {
                    mediaVM.downloadVideo(from: URL(string: mediaItem.video)!) { localUrl in
                        if let localUrl = localUrl {
                            mediaVM.saveLivePhoto(with: localUrl, imageUrl: URL(string: mediaItem.image)!)
                            amplitude.track(eventType: "wallpaper_download")
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Video Detail")
    }
}


