//
//  StatText.swift
//  NBAPlayerFun
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.leading, 30)
                .minimumScaleFactor(0.1)
            Text(statValue)
                .font(.system(size: 45))
                .fontWeight(.light)
                .padding(.trailing, 30)
                .minimumScaleFactor(0.1)
            Spacer()
        }
    }
}

#Preview {
    StatText(statName: "Age", statValue: "32")
}
