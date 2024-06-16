//
//  ScreenViewModel.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import Foundation

class ScreenViewModel: ObservableObject {
    @Published var showFirstPaywall: Bool
    private let userDefaultsKey = "nextPaywall"
    
    init() {
        let secondPaywall = UserDefaults.standard.bool(forKey: userDefaultsKey)
        showFirstPaywall = !secondPaywall
    }
    
    func togglePaywall() {
        showFirstPaywall.toggle()
        UserDefaults.standard.set(!showFirstPaywall, forKey: userDefaultsKey)
    }
    
    let firstPaywallItems: [FirstPaywallItem] = [
        FirstPaywallItem(icon: "lock", date: "Today", body: "Enjoy full access to advanced features"),
        FirstPaywallItem(icon: "bell", date: "In 5 days", body: "Trial ending reminder"),
        FirstPaywallItem(icon: "star", date: "In 7 days", body: "Automatic payment, cancel anytime"),
    ]
}
