//
//  FirstPaywallView.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct FirstPaywallView: View {
    let screenVM = ScreenViewModel()
    var body: some View {
        ZStack {
            Image(.firstPaywallBack)
                .resizable()
                .ignoresSafeArea()
            LinearGradient(stops: [
                .init(color: Colors.gradientStart, location: 0.25),
                .init(color: Colors.gradientMiddle, location: 0.35),
                .init(color: Colors.gradientEnd, location: 0.75)
            ],startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    XmarkButton()
                        .padding(.trailing)
                }
                Spacer()
            }
            VStack(alignment: .leading) {
                Spacer()
                Text("Get Premium Access")
                    .font(Font.custom("SFProDisplay-RegularItalic", size: 39))
                    .foregroundStyle(.white)
                ForEach(screenVM.firstPaywallItems, id: \.self) { item in
                    AccessInfo(icon: item.icon, date: item.date, text: item.body)
                }
                BestChoiseButton()
                OneWeekButton()
                ContiuneButton()
                    .padding(.top)
                    .padding(.bottom)
                HStack {
                    Text("Terms")
                        .foregroundStyle(Colors.white)
                        .font(.system(size: 15, weight: .regular))
                    Spacer()
                    Text("Privacy")
                        .foregroundStyle(Colors.white)
                        .font(.system(size: 15, weight: .regular))
                    Spacer()
                    Text("Restore")
                        .foregroundStyle(Colors.white)
                        .font(.system(size: 15, weight: .regular))
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
    }
}

#Preview {
    FirstPaywallView()
}
