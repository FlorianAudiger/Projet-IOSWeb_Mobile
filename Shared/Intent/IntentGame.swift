//
//  IntentGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/16/21.
//

import Foundation
import SwiftUI

class IntentGame: ObservableObject {
    //ONLY CHANGES THE STATES OF SGMVM
    @ObservedObject var gameContainer: SearchGamesViewModel
    let helper = GameListHelper()

    
    init(games: SearchGamesViewModel) {
        self.gameContainer = games
    }
    
    func loadGames(){
        self.gameContainer.searchGamesState = .loading
        helper.loadGames(endOfRequest: gamesLoaded)
    }
    
    
    func gamesLoaded(_ gameList: [GameViewModel]){
        if !gameList.isEmpty{
            self.gameContainer.searchGamesState = .loaded(gameList)
        }
        else {
            self.gameContainer.searchGamesState = .loadingError
        }
    }
}


