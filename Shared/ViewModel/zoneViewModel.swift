//
//  zoneViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/21/21.
//

import Foundation

class ZoneViewModel: Identifiable, ObservableObject, ZoneDelegate {

    //Nedded to be identifiable
    let id = UUID()
    
    @Published private(set) var model: Zone
    

    init(_ zone: Zone) {
        self.model = zone
        self.model.delegate = self
    }
    
    func gameAdded(game: GameViewModel) {
    }
    
}
