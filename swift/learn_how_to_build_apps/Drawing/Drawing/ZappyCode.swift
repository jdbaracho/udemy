//
//  ZappyCode.swift
//  Drawing Fin
//
//  Created by ZappyCode on 11/7/19.
//  Copyright © 2019 ZappyCode. All rights reserved.
//

import SwiftUI

struct ZappyCode: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                
                Path { path in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    path.move(to: CGPoint(x: 0, y: height))
                    path.addLine(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: width, y: 0))
                    path.addLine(to: CGPoint(x: width, y: height))
                    
                }.fill(LinearGradient(gradient: .init(colors: [.red,.purple,.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                
                Circle()
                Circle().fill(Color.yellow).padding()
                
                
                Path { path in
//                    let width = geometry.size.width
//                    let height = geometry.size.height
//                    var side: CGFloat = 0.0
//                    if width > height {
//                        side = height
//                    } else {
//                        side = width
//                    }

                    
                }
            }
        }
    }
}

struct ZappyCode_Previews: PreviewProvider {
    static var previews: some View {
        ZappyCode()
    }
}
