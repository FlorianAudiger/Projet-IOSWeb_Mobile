//
//  MenuView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/19/21.
//

import SwiftUI



struct ButtonViewListeDesJeux: View {
var body: some View {
    Text("Liste des jeux")
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}

struct ButtonViewRechercherUnJeu: View {
var body: some View {
    Text("Rechercher un jeu")
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}


struct MenuView: View {
    var body: some View {
        
        NavigationView {
            
        VStack{
            
            NavigationLink(destination: ContentView()) {
                           ButtonViewListeDesJeux()
            }
            NavigationLink(destination: SearchView()) {
                           ButtonViewRechercherUnJeu()
            }
            
            
            Button("Informations sur le festival") {
                
            }.padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)        }
            .navigationBarTitle("Le Festival Du Jeu", displayMode: .inline)
        
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
