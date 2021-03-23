//
//  exhibitorViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/21/21.
//

import Foundation

class ExhibitorViewModel: Identifiable {

    //Nedded to be identifiable
    let id = UUID()
    
    private var model: Exhibitor
    
    var gameList : [Game]
    var name : String

    
    init(_ exhibitor: Exhibitor) {
        self.model = exhibitor
        self.name = exhibitor.name
        self.gameList = exhibitor.gameList
    }
}
