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
    
    init(_ game: Game){
        self.model = game
        self.name = game.name
        self.duration = game.duration
    }
}


