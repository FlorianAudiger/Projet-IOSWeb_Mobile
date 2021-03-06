//
//  PublisherList.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        Text("")
    }
}


struct PublisherList: View {
    
    @ObservedObject var gameContainer: SearchGamesViewModel

    
    @State var publisherList = [ExhibitorViewModel]()
    @State private var searchText = ""

    

    var body: some View {
        VStack{
            SearchBar(text: $searchText)
            List(publisherList.filter({searchText.isEmpty ? true: $0.model.name.lowercased().contains(searchText.lowercased())})) { publisher in
                    NavigationLink(
                        destination:PublisherDetails(publisher: publisher)
                    ){
                        PublisherItem(publisher)
                    }
            }.padding(.trailing, -24.0)
            .navigationTitle("Liste des éditeurs")
        }
        .onAppear{
            publisherList.removeAll()
            for game in gameContainer.games {
                if let publisher = publisherList.first(where: {$0.model.name == game.publisher}) {
                    publisher.model.addGame(game: game)
                }
                else {
                    publisherList.append(ExhibitorViewModel(Exhibitor(name: game.publisher, gameList: [game])))
                }
            }
            print("publisherList :", publisherList)

        }
    }
}

struct PublisherList_Previews: PreviewProvider {
    static let gameContainer = SearchGamesViewModel()
    static var previews: some View {
        PublisherList(gameContainer: self.gameContainer)
    }
}
