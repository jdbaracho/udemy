//
//  PlayerRow.swift
//  NBAPlayerFun
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI

struct PlayerRow: View {
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
                .lineLimit(1)
                .minimumScaleFactor(0.1)
            
            Text(player.name).font(.largeTitle)
            
            Spacer()
        }
    }
}

#Preview {
    PlayerRow(player: players[0])
}
