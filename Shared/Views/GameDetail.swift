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
                Image(systemName: "gamecontroller")
                Text("Nom du jeu :")
                Text("\(game.name)")
            }
            HStack{
                Image(systemName: "doc.append")
                Text("Editeur :")
                Text("\(game.name)")
            }
            HStack{
                Image(systemName: "person")
                Text("Age minimum")
                Text("\(game.duration)")
            }
            HStack{
                Image(systemName: "timer")
                Text("Durée du jeu :")
                Text("\(game.duration)")
            }
            HStack{
                Image(systemName: "person.3")
                Text("Nombre de joueurs :")
                Text("\(game.duration)")
            }
            HStack{
                Image(systemName: "tag")
                Text("Categorie :")
                Text("\(game.duration)")
            }
            HStack{
                Image(systemName: "doc.text")
                Text("Notice :")
                Text("\(game.duration)")
            }
            HStack{
                Image(systemName: "arrow.down.circle")
                Text("Description:")
                Text("\(game.duration)")
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", exhibitorId: 1, prototypeGame: false)))
    }
}
