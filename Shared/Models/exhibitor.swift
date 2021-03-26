//
//  exhibitor.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/17/21.
//

import Foundation

protocol ExhibitorDelegate{
    func gameAdded(game: GameViewModel)
}

// Un exhibitor ne sera ici qu'un editeur de jeu, on n'a pas besoin d'informations supplémentaires.
class Exhibitor {

    public var name : String
    public var gameList : [GameViewModel]
    var delegate: ExhibitorDelegate?
    
    init(name: String, gameList: [GameViewModel]) {
        self.name = name
        self.gameList = gameList
    }
    
    func addGame(game: GameViewModel) {
        self.gameList.append(game)
        self.delegate?.gameAdded(game: game)
    }
}
