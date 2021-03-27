
//
//  MenuView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/19/21.
//

import SwiftUI


struct ButtonListeDesJeux: View {
    var body: some View {
        Text("Liste des jeux")
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .frame(width: UIScreen.main.bounds.width-32, height: 60, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            .opacity(0.87)

    }
}

struct PublisherListButton: View {
    var body: some View {
        Text("Liste des éditeurs")
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .frame(width: UIScreen.main.bounds.width-32, height: 60, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            .opacity(0.87)
    }
}

struct ZoneListButton: View {
    var body: some View {
        Text("Liste des zones")
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .frame(width: UIScreen.main.bounds.width-32, height: 60, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            .opacity(0.87)
    }
}


struct ContentView: View {
    
    @ObservedObject var gameContainer: DecodeGame
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("bg")
                    .resizable()
                    .ignoresSafeArea()

 
                VStack{
                        
                        Image("logo")
                            .resizable()
                            .padding(.all, 10.0)
                            .frame(width: 100.0, height: 100)
                    //Spacer()
                    VStack{
                        
                        ZStack{                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.white)
                            .padding(.bottom, 40.0)
                            .shadow(radius: 1, y:1)
                            .frame(width: UIScreen.main.bounds.width-32, height: 140, alignment: .center)
                            .opacity(0.23)
                        
                        Text("Bienvenue au \nFestival du Jeu !\n")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.center)
                        }
                        
                        
                    }
                    NavigationLink(destination: GameList(gameContainer: gameContainer)) {
                           ButtonListeDesJeux()
                    }
                    NavigationLink(destination: PublisherList(gameContainer: gameContainer)) {
                           PublisherListButton()
                    }
                    NavigationLink(destination: ZoneList(gameContainer: gameContainer)) {
                           ZoneListButton()
                    }
                    Spacer()
                }
            .navigationBarTitle("Le Festival Du Jeu", displayMode: .inline)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static let gameContainer = DecodeGame()
    static var previews: some View {
        ContentView(gameContainer: self.gameContainer)
    }
}
