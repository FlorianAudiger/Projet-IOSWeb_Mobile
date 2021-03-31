//
//  Projet_IOSWebApp.swift
//  Shared
//
//  Created by user190534 on 3/12/21.
//

import SwiftUI

@main
struct Projet_IOSWebApp: App {
    
    @StateObject var gameContainer = SearchGamesViewModel()
    
    var body: some Scene {
        WindowGroup {
                MenuView(gameContainer)
        }
    }
}
