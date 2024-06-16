//
//  AccessInfo.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct AccessInfo: View {
    
    var icon: String
    var date: String
    var text: String
    
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 180)
                        .foregroundStyle(Colors.circleDarkBlue)
                        .frame(width: 28, height: 28)
                        .frame(width: 1, height: 10)
                    Image(icon)
                }
                .padding(.bottom, -5)
                AccessStick()
                    .frame(width: 3, height: 10)
            }
            VStack(alignment: .leading) {
                Text(date)
                    .font(.system(size: 17))
                    .foregroundStyle(.white)
                    .padding(.bottom, 1)
                Text(text)
                    .font(.system(size: 13))
                    .foregroundStyle(.white.opacity(0.5))
            }
            .padding(.leading, 15)
        }
    }
}
