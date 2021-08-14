//
//  ContentView.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import SwiftUI

enum Tab {
    case games
    case developer
    case creator
}

struct ContentView: View {
    
    @State private var selection: Tab = .games
    
    var body: some View {
        TabView(selection: $selection) {
            GameListView()
                .tabItem {
                    Label("Games", systemImage: "gamecontroller")
                }
                .tag(Tab.games)
            
            DeveloperListView()
                .tabItem {
                    Label("Developer", systemImage: "star")
                }
                .tag(Tab.developer)
            
            CreatorListView()
                .tabItem {
                    Label("Creator", systemImage: "person.3")
                }
                .tag(Tab.creator)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ServiceMock())
    }
}
