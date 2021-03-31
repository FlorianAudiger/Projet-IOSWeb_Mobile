
//
//  MenuView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/19/21.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var gameContainer: SearchGamesViewModel
    @ObservedObject var intent: IntentGame
    
    init(_ sGVM: SearchGamesViewModel){
        self.gameContainer = sGVM
        self.intent = IntentGame(games: sGVM)
    }
    
    var isSearching : Bool{
        guard case .loading = self.gameContainer.searchGamesState else {
            return false
        }
        return true
    }
    
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("bg")
                    .resizable()
                    .ignoresSafeArea()
                if (!isSearching){
                    VStack{
                        Image("logo")
                            .resizable()
                            .padding(.all, 10.0)
                            .frame(width: 100.0, height: 100)
                        //Spacer()
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
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
                            ButtonGreen("Liste des jeux")
                        }
                        NavigationLink(destination: PublisherList(gameContainer: gameContainer)) {
                            ButtonGreen("Liste des éditeurs")
                        }
                        NavigationLink(destination: ZoneList(gameContainer: gameContainer)) {
                            ButtonGreen("Liste des zones")
                        }
                        Spacer()
                    }
                    .navigationBarTitle("Le Festival Du Jeu", displayMode: .inline)
                } else {
                    LoadingView()
                }
            }
        }
        .onAppear(){
            print("\n\n\n MENU VIEW APPEARS")
            intent.loadGames()
        }
    }
}





struct MenuView_Previews: PreviewProvider {
    static let gameContainer = SearchGamesViewModel()
    static var previews: some View {
        MenuView(gameContainer)
    }
}
