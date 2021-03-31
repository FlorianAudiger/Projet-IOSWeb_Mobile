//
//  SearchGamesViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/22/21.
//


import Foundation
import SwiftUI

enum SearchGamesState{
    case loading // Initial state, view oriented
    case loaded([GameViewModel]) // Model-oriented, see below
    case loadingError // View oriented
}

public class SearchGamesViewModel: ObservableObject {
    
    @Published var searchGamesState: SearchGamesState = .loading {
        didSet {
            guard case let .loaded(games) = searchGamesState else { return }
            self.games = games
            print("SearchGamesViewModel - jeux assignés :", self.games.count)
        }
    }
    @Published var games = [GameViewModel]()
    
    
    
}
