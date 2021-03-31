//
//  ZoneList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI

struct ZoneList: View {
    
    @ObservedObject var gameContainer: SearchGamesViewModel

    
    var zoneList = [ZoneViewModel]()
    @State private var searchText = ""
    
    init(gameContainer: SearchGamesViewModel) {
    self.gameContainer = gameContainer
        for game in gameContainer.games {
            if let zone = zoneList.first(where: {$0.model.name == game.zone}) {
                zone.model.addGame(game: game)
            }
            else {
                zoneList.append(ZoneViewModel(Zone(name: game.zone, gameList: [game])))
            }
        }
        print("zoneList :", zoneList)
    }
    
    

    var body: some View {
        VStack{
            SearchBar(text: $searchText)
            List(zoneList.filter({searchText.isEmpty ? true: $0.model.name.lowercased().contains(searchText.lowercased())})) { zone in
                //ForEach(zoneList, id: \.id){ zone in
                    NavigationLink(
                        destination:ZoneDetails(zone: zone)
                    ){
                        ZoneItem(zone)
                    }
                //}
            }.padding(.trailing, -24.0)
            .navigationTitle("Liste des zones")
        }
    }
}

struct ZoneList_Previews: PreviewProvider {
    static let gameContainer = SearchGamesViewModel()
    static var previews: some View {
        ZoneList(gameContainer: self.gameContainer)
    }
}
 
