//
//  GameItem.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import SwiftUI

struct GameItem2: View {
    
    var game: GameViewModel
    
    init(_ game: GameViewModel) {
        self.game = game
    }
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.white)
                .shadow(radius: 1, y:1)
                .frame(width: UIScreen.main.bounds.width-32, height: 80, alignment: .center)
            HStack{
                Image(systemName: "gamecontroller")
                    .padding(.leading, 60.0);
                Text(game.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.purple)
                    .padding(.trailing)
                
            }
            
}

    }
}

struct GameItem2_Previews: PreviewProvider {
    static var previews: some View {
        GameItem2(GameViewModel(Game(name: "gameName", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "gameNotice", description: "gameDescription", publisher: "gamePublisher", prototypeGame: false, zone: "MyZone")))
    }
}
