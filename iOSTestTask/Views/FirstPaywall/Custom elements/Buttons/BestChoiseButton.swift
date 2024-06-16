//
//  BestChoiseButton.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct BestChoiseButton: View {
    var body: some View {
        Button {
            
        } label: {
            GeometryReader { geometry in
                ZStack {
                    Colors.white.opacity(0.06)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Colors.buttonPinkBorder, lineWidth: 2)
                        .overlay {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("1 year")
                                        .foregroundColor(Colors.white)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding(.bottom, 2)
                                    Spacer()
                                    Text("$99.99")
                                        .foregroundColor(Colors.white)
                                        .font(.system(size: 16, weight: .semibold))
                                }
                                HStack {
                                    Text("7-day free trial")
                                        .foregroundColor(Colors.greyTextColor)
                                        .font(.system(size: 14, weight: .semibold))
                                    Spacer()
                                }
                            }
                            .padding([.leading, .trailing])
                        }
                    
                    Text("Best Choice")
                        .font(.system(size: 10))
                        .bold()
                        .foregroundColor(Colors.white)
                        .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Colors.buttonPinkBorder)
                        )
                        .offset(x: geometry.size.width / 2.75, y: -33)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 65)
    }
}
