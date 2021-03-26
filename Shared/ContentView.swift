
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
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct PublisherListButton: View {
    var body: some View {
        Text("Liste des éditeurs")
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ZoneListButton: View {
    var body: some View {
        Text("Liste des zones")
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ButtonRechercherUnJeu: View {
    var body: some View {
        Text("Rechercher un jeu (A SUPPRIMER)")
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
    }


struct ContentView: View {
    
    @ObservedObject var gameContainer: DecodeGame
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("background")
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Text("Bienvenue au festival 2021")
                        Text("Il se déroulera au Corum gnagnagna")
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
                    NavigationLink(destination: SearchView(gameContainer: gameContainer)) {
                           ButtonRechercherUnJeu()
                    }
                    Button("BouttonTest") {
                    }
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
