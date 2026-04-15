//
//  ContentView.swift
//  NBAPlayerFun
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI

struct PlayerDetail: View {
    var player: Player
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(
                    Circle().stroke(
                        Color.white,
                        style: StrokeStyle(lineWidth: 4)
                    )
                )
                .offset(x: 0, y: -90)
                .padding(.bottom, -90)
                .shadow(radius: 15)

            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .lineLimit(1)
                .padding(.leading)
                .padding(.trailing)
                .minimumScaleFactor(0.1)

            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")

            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    PlayerDetail(player: players[0])
}
