//
//  zoneViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/21/21.
//

import Foundation

class ZoneViewModel: Identifiable {

    //Nedded to be identifiable
    let id = UUID()
    
    private var model: Zone
    
    var gameList : [Game]
    var name: String

    
    init(_ zone: Zone) {
        self.model = zone
        self.name = zone.name
        self.gameList = zone.gameList
    }
}
