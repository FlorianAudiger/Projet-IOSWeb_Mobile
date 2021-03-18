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
 
            }
            HStack{
                Image(systemName: "timer")
                Text("\(game.duration)"+"'")
                Image(systemName: "person.3")
                Text("\(game.nbPlayersMin)"+"-"+"\(game.nbPlayersMax)")
                Image(systemName: "person")
                Text("\(game.ageMin)"+"+")
            }
            HStack{
                Image(systemName: "tag")
                Text("Categorie :")
                Text("\(game.category)")
            }
            HStack{
                Image(systemName: "doc.text")
                Text("Notice :")
                Text("\(game.notice)")
            }
            HStack{
                Image(systemName: "arrow.down.circle")
                Text("Description:")
            }
            HStack{
                Text("\(game.description)")
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(GameViewModel(Game(name: "Monopoly", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "Vidéo", description: " Le but du jeu consiste à ruiner ses concurrents par des opérations immobilières. ", exhibitorId: 1, prototypeGame: false)))
    }
}
