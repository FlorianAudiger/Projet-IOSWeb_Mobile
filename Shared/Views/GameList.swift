//
//  GameList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 23/03/2021.
//

import SwiftUI

struct GameList: View {
    
    @ObservedObject var apiCall = DecodeGame()


    var body: some View {
        //NavigationView{
            List{
                ForEach(apiCall.games){ game in
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
