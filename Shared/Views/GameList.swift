//
//  GameList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 23/03/2021.
//

import SwiftUI

struct GameList: View {
    var simulatedGameList = [
        GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher1", prototypeGame: false, zone: "ZoneNumber1")),
        GameViewModel(Game(name: "gameName2", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 60, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher2", prototypeGame: false, zone: "ZoneNumber2")),
    ]
    
    @ObservedObject var gameList = DecodeGame()


    var body: some View {
        //NavigationView{
            List{
                ForEach(simulatedGameList, id: \.id){ game in
                    NavigationLink(
                        destination:GameDetail(game)
                        
                    ){
                        GameItem(game)
                    }
                }
            }
            .navigationTitle("Liste des jeux")
               //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        newGameList()
    }
}
