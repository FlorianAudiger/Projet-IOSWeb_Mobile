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
                       Text("1").tag(1)
                       Text("2").tag(2)
                    }
                }
                Section {
                    Picker("Filtrer par nombre de joueurs", selection: $selectionNumberOfPlayers) {
                       Text("Tous").tag(0)
                       Text("2 joueurs").tag(1)
                       Text("3 Joueurs").tag(2)
                    }
                }
                Section {
                    Picker("Filtrer par durée", selection: $selectionDuration) {
                       Text("Toutes").tag(0)
                       Text("<5'").tag(1)
                       Text("Aventure").tag(2)
                    }
                }
                Section {
                    NavigationLink(destination: ContentView()) {
                                   ButtonSearchView()
                               }
                    //Button{
                    //    print("Nothing")
                    //} label : {
                    //    Text("Rechercher")
                    //    Image(systemName: "1.magnifyingglass")                    }
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
