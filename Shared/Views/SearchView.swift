//
//  SearchView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/18/21.
//

import SwiftUI

struct ButtonSearchView: View {
var body: some View {
    Text("Rechercher")
    Image(systemName: "1.magnifyingglass")
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}



struct SearchView: View {
    @State private var selectionCategory = 0
    @State private var selectionPublisher = 0
    @State private var selectionZone = 0
    @State private var selectionNumberOfPlayers = 0
    @State private var selectionDuration = 0
    
    var simulatedGameList = [
        ZoneViewModel(Zone(name: "gameName", gameList:[])),
        ZoneViewModel(Zone(name: "gameNa2me", gameList: [])),
    ]
    
    
    
     var body: some View {
         //NavigationView {

             Form {
                 Section {
                     Picker("Filtrer par editeur", selection: $selectionPublisher) {
                         Text("Tous").tag(0)
                         Text("Gigamic").tag(1)
                         Text("Hasbro").tag(2)
                        
                     }
                     
                     //.labelsHidden() // Permet de masquer le label
                 }
                 
                 Section {
                     Picker("Filtrer par catégorie", selection: $selectionCategory) {
                        Text("Toutes").tag(0)
                        Text("Enfant").tag(1)
                        Text("Aventure").tag(2)
                     }
                 }
                Section {
                    Picker("Filtrer par zone", selection: $selectionZone) {
                       Text("Toutes").tag(0)

                        //
                        //    for zone in (simulatedGameList){
                        //            View(self)
                        //            Text(zone.name).tag(1)
                        //    }
                        
                        
                       Text("1").tag(1)
                       Text("2").tag(2)
                    }
                }
                Section {
                    Picker("Filtrer par nombre de joueurs", selection: $selectionNumberOfPlayers) {
                       Text("Tous").tag(0)
                        Text("1 joueur").tag(1)
                       Text("2 joueurs").tag(2)
                       Text("3 Joueurs").tag(3)
                        Text("4 joueurs et plus").tag(4)
                        Text("8 Joueurs et plus").tag(5)
                    }
                }
                Section {
                    Picker("Filtrer par durée", selection: $selectionDuration) {
                       Text("Toutes").tag(0)
                       Text("Entre 1 et 10 min").tag(1)
                       Text("Entre 11 et 30min").tag(2)
                        Text("Plus de 30 min").tag(3)
                        
                    }
                }
                Section {
                    NavigationLink(destination: ContentView()) {
                                   ButtonSearchView()
                                }
                }

                
                
             }.navigationBarTitle("Rechercher un jeu")

            
         //}
     }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
