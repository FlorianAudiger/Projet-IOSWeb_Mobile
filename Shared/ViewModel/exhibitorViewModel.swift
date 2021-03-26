//
//  exhibitorViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/21/21.
//

import Foundation

class ExhibitorViewModel: ExhibitorDelegate, ObservableObject {

    //Nedded to be identifiable
    let id = UUID()
    
    @Published private(set) var model: Exhibitor
    
    init(_ exhibitor: Exhibitor) {
        self.model = exhibitor
        self.model.delegate = self
    }
    
    func gameAdded(game: GameViewModel) {
    }
}
