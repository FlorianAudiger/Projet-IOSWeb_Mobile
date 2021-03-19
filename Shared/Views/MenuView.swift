//
//  MenuView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/19/21.
//

import SwiftUI



struct ButtonView: View {
var body: some View {
    Text("Liste des jeux")
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
            Text("Le Festival Du Jeu")
            NavigationLink(destination: SearchView()) {
                           ButtonView()
                       }            
            
            Button("Informations sur le festival") {
                
            }.padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)        }
        
    }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
