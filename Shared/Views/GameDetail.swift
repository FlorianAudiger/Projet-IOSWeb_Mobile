//
//  GameDetail.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import SwiftUI

struct GameDetail: View {
    
    var game: GameViewModel
    
    init(_ game: GameViewModel){
        self.game = game
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("Nom du jeu :")
                Text("\(game.name)")
                Spacer()
            }
            HStack{
                Text("Durée du jeu :")
                Text("\(game.duration)")
                Spacer()
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", exhibitorId: 1, prototypeGame: false)))
    }
}
