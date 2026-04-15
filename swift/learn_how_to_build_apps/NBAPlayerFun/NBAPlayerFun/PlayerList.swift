//
//  PlayerList.swift
//  NBAPlayerFun
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) { player in
                NavigationLink(destination: PlayerDetail(player: player)) {
                    PlayerRow(player: player)
                        .frame(height: 60)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

#Preview {
    PlayerList()
}
