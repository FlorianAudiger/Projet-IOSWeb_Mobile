//
//  GameViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import Foundation

class GameViewModel: Identifiable {

    
    
    //Nedded to be identifiable
    let id = UUID()
    
    private var model: Game
    
    var name: String
    var duration: Int
    var nbPlayersMin : Int
    var nbPlayersMax : Int
    var ageMin : Int
    var category : String
    var notice : String
    var description : String
    var exhibitorId : Int
    var prototypeGame : Bool

    
    init(_ game: Game) {
        self.model = game
        self.name = game.name
        self.duration = game.duration
        self.nbPlayersMin = game.nbPlayersMin
        self.nbPlayersMax = game.nbPlayersMax
        self.ageMin = game.ageMin
        self.category = game.category
        self.notice = game.notice
        self.description = game.description
        self.exhibitorId = game.exhibitorId
        self.prototypeGame = game.prototypeGame
    }
}


