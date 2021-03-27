//
//  GameList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 23/03/2021.
//

import SwiftUI




struct GameList: View {
    
    
    @ObservedObject var gameContainer: DecodeGame

    @State private var searchText = ""
    

    var body: some View {
        
        VStack{
            SearchBar(text: $searchText)
            List(gameContainer.games.filter({searchText.isEmpty ? true: $0.name.lowercased().contains(searchText.lowercased())})) { game in
                NavigationLink(
                    destination:GameDetail(game)
                ){
                    GameItem(game)
                }
            }.padding(.trailing, -24.0)
            .navigationTitle("Liste des jeux")
        }
    }
}

struct GameList_Previews: PreviewProvider {
    static let gameContainer = DecodeGame()
    static var previews: some View {
        GameList(gameContainer: self.gameContainer)
    }
}
