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

        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.white)
                .shadow(radius: 1, y:1)
                .frame(width: UIScreen.main.bounds.width-32, height: 80, alignment: .center)
            HStack{
                Text(publisher.model.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 60.0)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.purple)
                    .padding(.trailing)
                
            }
            
}
    }
}

struct PublisherItem_Previews: PreviewProvider {
    static var previews: some View {
        PublisherItem(ExhibitorViewModel(Exhibitor(name: "Preview publisher name", gameList: [GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher", prototypeGame: false, zone: "MyZone"))])))
    }
}
