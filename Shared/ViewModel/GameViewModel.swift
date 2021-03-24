//
//  GameViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import Foundation

class GameViewModel: Identifiable, Decodable {
    
    //Nedded to be identifiable
    let id = UUID()
    
    private var model: Game
    
    var name: String
    var publisher: String
    var duration: Int
    var nbPlayersMin : Int
    var nbPlayersMax : Int
    var ageMin : Int
    var category : String
    var notice : String
    var description : String
    var prototypeGame : Bool
    var zone : String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case publisher = "publisher"
        case duration = "duration"
        case nbPlayersMin = "nbPlayersMin"
        case nbPlayersMax = "nbPlayersMax"
        case ageMin = "ageMin"
        case category = "category"
        case notice = "notice"
        case description = "description"
        case prototypeGame = "prototypeGame"
        case zone  = "zone"
        case model = "modelThatWillNeverBeUsed"
    }
    
    init(_ game: Game) {
        self.model = game
        self.name = game.name
        self.publisher = game.publisher
        self.duration = game.duration
        self.nbPlayersMin = game.nbPlayersMin
        self.nbPlayersMax = game.nbPlayersMax
        self.ageMin = game.ageMin
        self.category = game.category
        self.notice = game.notice
        self.description = game.description
        self.prototypeGame = game.prototypeGame
        self.zone = game.zone
    }
}
