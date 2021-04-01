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
                            Text("\(game.zone)")
                        }
                        
                    }.font(.title2)
                    VStack{
                        HStack{
                            Image(systemName: "timer")
                            Text("\(game.duration)"+"'")
                            Text(" | ")
                            Image(systemName: "person")
                            Text("\(game.ageMin)"+"+")
                        }.font(.title)
                        Image(systemName: "person.3")
                        Text("\(game.nbPlayersMin)"+"-"+"\(game.nbPlayersMax)").font(.title)
                        VStack{
                            HStack{
                                Image(systemName: "doc.text")
                                Link("Notice", destination: URL(string: "https://festivaldujeu.netlify.app/#/")!)
                                    .foregroundColor(.blue)
                                    .font(.title2)
                            }
                        }
                        VStack{
                            HStack{
                                Image(systemName: "questionmark")
                                Text("Description")
                            }.font(.title2)
                            HStack{
                                Text("\(game.description)")
                                Spacer()
                            }.font(.title3)
                        }
                    }.padding(.horizontal, 30.0)
                }
                
                
                
            }.foregroundColor(Color.black)
            
            
        }
    }

}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(GameViewModel(Game(name: "Monopoly", ageMin: 6, nbPlayersMin: 2, nbPlayersMax: 4, duration: 30, category: "Child", notice: "Vidéo", description: " Le but du jeu consiste à ruiner ses concurrents par des opérations immobilières. ", publisher: "publisher1", prototypeGame: false, zone: "ZoneNumeroUn")))
    }
}
