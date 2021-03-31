//
//  IntentGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/16/21.
//

import Foundation
import SwiftUI

class IntentGame {
    @ObservedObject var gameContainer: SearchGamesViewModel
    let helper = GameListHelper()

    
    init(games: SearchGamesViewModel) {
        self.gameContainer = games
    }
    
    func loadGames(){
        helper.loadGames(affectToContainer: affectToContainer)
    }
    
    
    func affectToContainer(_ gameList: [GameViewModel]){
        gameContainer.games = gameList
        //tracksLoaded = true
    }
}


