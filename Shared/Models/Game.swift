//
//  Game.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import Foundation

class Game{
    
    public var name : String
    public var ageMin : Int
    public var nbPlayersMin : Int
    public var nbPlayersMax : Int
    public var duration : Int
    public var category : String
    public var notice : String
    public var description : String
    public var publisher : String
    public var prototypeGame : Bool
    
    internal init(name: String, ageMin: Int, nbPlayersMin: Int, nbPlayersMax: Int, duration: Int, category: String, notice: String, description: String, publisher: String, prototypeGame: Bool) {
        self.name = name
        self.ageMin = ageMin
        self.nbPlayersMin = nbPlayersMin
        self.nbPlayersMax = nbPlayersMax
        self.duration = duration
        self.category = category
        self.notice = notice
        self.description = description
        self.publisher = publisher
        self.prototypeGame = prototypeGame
    }
}
