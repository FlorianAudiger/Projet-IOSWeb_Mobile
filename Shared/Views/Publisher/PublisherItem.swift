//
//  PublisherItem.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI

struct PublisherItem: View {
    
    var publisher: ExhibitorViewModel
    
    init(_ publisher: ExhibitorViewModel) {
        self.publisher = publisher
    }
    
    var body: some View {
        Text(publisher.model.name)
    }
}

struct PublisherItem_Previews: PreviewProvider {
    static var previews: some View {
        PublisherItem(ExhibitorViewModel(Exhibitor(name: "Preview publisher name", gameList: [GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher", prototypeGame: false, zone: "MyZone"))])))
    }
}
