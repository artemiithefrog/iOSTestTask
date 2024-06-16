//
//  SecondPaywallView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct SecondPaywallView: View {
    var body: some View {
        VStack {
            HStack {
                XmarkButton()
                Spacer()
            }
            Spacer()
            ManWithBook()
            Spacer()
            Text("Join the enjoyable \nlearning")
                .font(.system(size: 39))
                .multilineTextAlignment(.center)
            Text("Enjoy the lessons with your favorite app. \nCancel anytime.")
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
            Spacer()
            BestChoiseButtonSecond()
            TwelveWeeksButton()
            ContiuneButtonSecond()
                .padding(.top)
                .padding(.bottom)
            HStack {
                Text("Terms")
                    .foregroundStyle(Colors.black)
                    .font(.system(size: 15, weight: .regular))
                Spacer()
                Text("Privacy")
                    .foregroundStyle(Colors.black)
                    .font(.system(size: 15, weight: .regular))
                Spacer()
                Text("Restore")
                    .foregroundStyle(Colors.black)
                    .font(.system(size: 15, weight: .regular))
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

#Preview {
    SecondPaywallView()
}
