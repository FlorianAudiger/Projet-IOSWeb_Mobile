//
//  zone.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/21/21.
//

import Foundation

protocol ZoneDelegate{
    func gameAdded(game: GameViewModel)
}

class Zone {

    public var name : String
    public var gameList : [GameViewModel]
    
    var delegate: ZoneDelegate?
    
    init(name: String, gameList: [GameViewModel]) {
        self.name = name
        self.gameList = gameList
    }
    
    
    func addGame(game: GameViewModel) {
        self.gameList.append(game)
        self.delegate?.gameAdded(game: game)
    }
    
    
    
}
