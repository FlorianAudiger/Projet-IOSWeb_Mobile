//
//  PublisherList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI


struct PublisherList: View {
    
    @ObservedObject var gameContainer: DecodeGame
    
    var publisherList = [Exhibitor]() //TODO: replace with VM
    
    init(gameContainer: DecodeGame) {
    self.gameContainer = gameContainer
        for game in gameContainer.games {
            if let publisher = publisherList.first(where: {$0.name == game.publisher}) {
                publisher.addGame(game: game.model)
            }
            else {
                //...
            }
        }
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PublisherList_Previews: PreviewProvider {
    static let gameContainer = DecodeGame()
    static var previews: some View {
        PublisherList(gameContainer: self.gameContainer)
    }
}
