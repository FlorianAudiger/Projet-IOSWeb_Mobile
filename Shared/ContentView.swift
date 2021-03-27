
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
            .opacity(0.90)

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
            .opacity(0.90)
    }
}

struct ZoneListButton: View {
    var body: some View {
        Text("Liste des zones")
            .padding()
            .frame(width: UIScreen.main.bounds.width-32, height: 60, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            .opacity(0.90)
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
                            .padding(.top, 0.0)
                            .frame(width: 100.0, height: 100)
                    Spacer()
                    VStack{
                        ZStack{                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.gray)
                            .shadow(radius: 1, y:1)
                            .frame(width: UIScreen.main.bounds.width-32, height: 80, alignment: .center)
                            .opacity(0.8)
                        
                        Text("Bienvenue au festival 2021")
                            .font(.title)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        }
                        
                        
                    }
                    NavigationLink(destination: GameList(gameContainer: gameContainer)) {
                           ButtonListeDesJeux()
                    }
                    NavigationLink(destination: PublisherList(gameContainer: gameContainer)) {
                           PublisherListButton()
                    }
                    NavigationLink(destination: GameList(gameContainer: gameContainer)) {
                           ButtonListeDesJeux()
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
