//
//  ZoneDetails.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//
import SwiftUI

struct ZoneDetails: View {
    
    var zone: ZoneViewModel
    
    var body: some View {
        VStack{
            HStack {
                Text(zone.model.name).font(.largeTitle)
                Text("\n").font(.largeTitle)
            }
            VStack{
                Text(" Jeux dans la zone :").font(.title)
                List{
                    ForEach(zone.model.gameList, id: \.id){ game in
                        NavigationLink(
                            destination:GameDetail(game)
                        ){
                            //Text(game.name)
                            GameItem(game)
                        }
                    }
                }.padding(.trailing, -24.0)
            }
        }
    }
}

struct ZoneDetails_Previews: PreviewProvider {
    static var previews: some View {
        ZoneDetails(zone: ZoneViewModel(Zone(name: "Preview zone name", gameList: [GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher", prototypeGame: false, zone: "MyZone"))])))
    }
}


