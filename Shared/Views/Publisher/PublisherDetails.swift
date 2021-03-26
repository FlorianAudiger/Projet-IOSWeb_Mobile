//
//  PublisherDetails.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI

struct PublisherDetails: View {
    
    var publisher: ExhibitorViewModel
    
    var body: some View {
        VStack{
            HStack {
                Text(publisher.model.name)
                Text("\n")
            }
            VStack{
                Text(" Jeux publiés :")
                List{
                    ForEach(publisher.model.gameList, id: \.id){ game in
                        NavigationLink(
                            destination:GameDetail(game)
                        ){
                            Text(game.name)
                        }
                    }
                }
            }
        }
    }
}

struct PublisherDetails_Previews: PreviewProvider {
    static var previews: some View {
        PublisherDetails(publisher: ExhibitorViewModel(Exhibitor(name: "Preview publisher name", gameList: [GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher", prototypeGame: false, zone: "MyZone"))])))
    }
}
