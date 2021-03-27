//
//  GameDetail.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import SwiftUI

struct GameDetail: View {
    
    var game: GameViewModel
    
    init(_ game: GameViewModel){
        self.game = game
    }
    
    var body: some View {
        ZStack{
        Image("bg3")
            .resizable()
            .ignoresSafeArea()
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .shadow(radius: 7, y:2)
                .frame(width: UIScreen.main.bounds.width-32, height: UIScreen.main.bounds.height - 200, alignment: .center)
                .opacity(0.85)
        
        
        VStack{
            VStack{
                    HStack{
                    Image(systemName: "gamecontroller")
     
                    Text("\(game.name)")
                }
                HStack{
                    Image(systemName: "doc.append")
                    Text("\(game.publisher)")
                }
                
            }.padding(.bottom, 40.0).font(.largeTitle)
            
            
            VStack{
            HStack{
                Image(systemName: "tag")
                Text("Categorie :")
                Text("\(game.category)")
            }
            HStack{
                Image(systemName: "flag")
                Text("Zone :")
                Text("\(game.zone)")
            }
                
            }.padding(.bottom, 30.0).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack{
            HStack{
                Image(systemName: "timer")
                Text("\(game.duration)"+"'")
                Image(systemName: "person.3")
                Text("\(game.nbPlayersMin)"+"-"+"\(game.nbPlayersMax)")
                Image(systemName: "person")
                Text("\(game.ageMin)"+"+")
            }.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 30.0)

                VStack{
            HStack{
                Image(systemName: "doc.text")
                Text("Notice :")
                Text("\(game.notice)")
                Spacer()
            }
            HStack{
                Image(systemName: "arrow.down.circle")
                Text("Description")
                Spacer()
            }

            HStack{
                
                Text("\(game.description)")
                Spacer()
                    
            }
                }.padding(.horizontal, 30.0).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            
            
        }.foregroundColor(Color.black)
            
        
        }
    }
    }
        
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(GameViewModel(Game(name: "Monopoly", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "Vidéo", description: " Le but du jeu consiste à ruiner ses concurrents par des opérations immobilières. ", publisher: "publisher1", prototypeGame: false, zone: "ZoneNumeroUn")))
    }
}
