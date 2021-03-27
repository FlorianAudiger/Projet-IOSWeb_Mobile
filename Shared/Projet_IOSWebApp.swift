//
//  Projet_IOSWebApp.swift
//  Shared
//
//  Created by user190534 on 3/12/21.
//

import SwiftUI

@main
struct Projet_IOSWebApp: App {
    
    @Environment(\.scenePhase) private var lifecycle //Permet de déclencher la récupération des jeux lors de l'ouverture de l'app
    @StateObject var gameContainer = DecodeGame()
    @State var tracksLoaded = false
    
    let helper = GameListHelper()
    
    var body: some Scene {
        WindowGroup {
            if (tracksLoaded){
                ContentView(gameContainer: gameContainer)}
            else {
                LoadingView()
            }
        }.onChange(of: lifecycle) { phase in
            switch phase{
            case .active:
                helper.loadGames(affectToContainer: affectToContainer)
            case .background, .inactive:
                break
            @unknown default:
                break
            }
        }
    }
    
    func affectToContainer(_ gameList: [GameViewModel]){
        gameContainer.games = gameList
        tracksLoaded = true
    }
}
