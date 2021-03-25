//
//  GameList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 23/03/2021.
//

import SwiftUI

struct GameList: View {
    
    @ObservedObject var gameContainer: DecodeGame


    var body: some View {
        
        //NavigationView{
            List{
                ForEach(gameContainer.games, id: \.id){ game in
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

struct GameList_Previews: PreviewProvider {
    static let gameContainer = DecodeGame()
    static var previews: some View {
        GameList(gameContainer: self.gameContainer)
    }
}
