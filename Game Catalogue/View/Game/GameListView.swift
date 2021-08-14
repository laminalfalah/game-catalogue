//
//  GameList.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import SwiftUI

struct GameListView: View {
    
    @State private var showingProfile = false
    
    @State private var showingSearch = false
    
    @State private var showingFavorite = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...20, id: \.self) { key in
                    GameRowView()
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Games")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: { showingFavorite.toggle() }) {
                        Image(systemName: "bookmark")
                            .accessibilityLabel("Favorite")
                    }
                    
                    Button(action: { showingProfile.toggle() }) {
                        Image(systemName: "person.crop.circle")
                            .accessibilityLabel("Profile")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { showingSearch.toggle() }) {
                        Image(systemName: "magnifyingglass")
                            .accessibilityLabel("Searching")
                    }
                }
            }
        }
    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}
