//
//  Projet_IOSWebApp.swift
//  Shared
//
//  Created by user190534 on 3/12/21.
//

import SwiftUI

@main
struct Projet_IOSWebApp: App {
    
    @Environment(\.scenePhase) private var lifecycle
    
    @StateObject var gameContainer = DecodeGame()
    
    let helper = GameListHelper()
    
    var body: some Scene {
        WindowGroup {
            ContentView(gameContainer: gameContainer)
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
    }
}
