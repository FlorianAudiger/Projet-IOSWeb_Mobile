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

struct ButtonRechercherUnJeu: View {
var body: some View {
    Text("Rechercher un jeu")
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}

struct ButtonInformations: View {
var body: some View {
    Text("Informations sur le festival")
        .padding()
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(8)
        .padding(.top, 15.0)
}
}


struct MenuView: View {
    var body: some View {

        NavigationView {
            ZStack{
                Image("background")
                    .ignoresSafeArea()
        VStack{
            
            NavigationLink(destination: ContentView()) {
                           ButtonListeDesJeux()
            }
            NavigationLink(destination: SearchView()) {
                           ButtonRechercherUnJeu()
            }
            NavigationLink(destination: SearchView()) {
                           ButtonInformations()
            }
            
       }
            .navigationBarTitle("Le Festival Du Jeu", displayMode: .inline)
        
        }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
