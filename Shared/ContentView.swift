//
//  ContentView.swift
//  Shared
//
//  Created by user190534 on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    var simulatedGameList = [
        GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", exhibitorId: 1, prototypeGame: false)),
        GameViewModel(Game(name: "gameName2", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 60, category: "Child", notice: "gameNotice", description: "gameDescription", exhibitorId: 1, prototypeGame: false)),
    ]
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
