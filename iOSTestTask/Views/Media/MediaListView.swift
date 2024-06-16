//
//  MediaView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI
import AmplitudeSwift

struct MediaListView: View {
    @StateObject private var viewModel = MediaViewModel()
    let amplitude = Amplitude(configuration: Configuration(
        apiKey: "d30b0c165719bbd4f146040a6906e006"
    ))

    var body: some View {
        NavigationView {
            List(viewModel.mediaItems) { mediaItem in
                NavigationLink(destination: MediaDetailView(mediaItem: mediaItem)) {
                    VStack(alignment: .leading) {
                        AsyncImage(url: URL(string: mediaItem.image)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                            case .failure:
                                Image(systemName: "photo")
                            @unknown default:
                                EmptyView()
                            }
                        }
                        .frame(height: 200)
                        .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .navigationTitle("Media List")
            .onAppear {
                viewModel.loadMedia()
                amplitude.track(eventType: "wallpaper_screen_view")
            }
        }
    }
}

