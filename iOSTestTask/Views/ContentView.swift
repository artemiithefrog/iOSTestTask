//
//  ContentView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var screenVM = ScreenViewModel()
    
    var body: some View {
        Group {
            if screenVM.showFirstPaywall {
                FirstPaywallView()
            } else {
                SecondPaywallView()
            }
        }
        .onAppear {
            screenVM.togglePaywall()
        }
    }
}

#Preview {
    ContentView()
}
