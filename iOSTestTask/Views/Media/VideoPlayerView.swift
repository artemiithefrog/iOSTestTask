//
//  VideoPlayerView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let url: URL
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: url))
            .onDisappear {
                AVPlayer(url: url).pause()
            }
    }
}
