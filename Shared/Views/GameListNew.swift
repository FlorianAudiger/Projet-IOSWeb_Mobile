//
//  GameList.swift
//  Shared
//
//  Created by user190534 on 3/12/21.
//

import SwiftUI

struct newGameList: View {
    
    @ObservedObject var games = DecodeGame()
    
    var simulatedGameList = [
        GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher1", prototypeGame: false, zone: "ZoneNumber1")),
        GameViewModel(Game(name: "gameName2", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 60, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher2", prototypeGame: false, zone: "ZoneNumber2")),
    ]
    
    /*
    var body: some View {
        //NavigationView{
            List{
                ForEach(simulatedGameList){ game in
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
    */
        
        
    var body: some View {
            VStack{
                List(games.games) { game in
                    VStack (alignment: .leading) {
                        Text(game.name)
                    }
                }
            }
        }
    
    
    
}

struct CoontentView_Previews: PreviewProvider {
    static var previews: some View {
        newGameList()
    }
}
