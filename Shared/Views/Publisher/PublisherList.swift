//
//  PublisherList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI


struct PublisherList: View {
    
    @ObservedObject var gameContainer: DecodeGame
    
    var publisherList = [ExhibitorViewModel]() //TODO: replace with VM
    
    init(gameContainer: DecodeGame) {
    self.gameContainer = gameContainer
        for game in gameContainer.games {
            if let publisher = publisherList.first(where: {$0.model.name == game.publisher}) {
                publisher.model.addGame(game: game)
            }
            else {
                publisherList.append(ExhibitorViewModel(Exhibitor(name: game.publisher, gameList: [game])))
            }
        }
        print("publisherList :", publisherList)
    }

    var body: some View {
        List{
            ForEach(publisherList, id: \.id){ publisher in
                NavigationLink(
                    destination:PublisherDetails(publisher: publisher)
                ){
                    PublisherItem(publisher)
                }
            }
        }
        .navigationTitle("Liste des jeux")
    }
}

struct PublisherList_Previews: PreviewProvider {
    static let gameContainer = DecodeGame()
    static var previews: some View {
        PublisherList(gameContainer: self.gameContainer)
    }
}
