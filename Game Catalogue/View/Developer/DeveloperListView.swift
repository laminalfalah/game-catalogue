//
//  DeveloperList.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import SwiftUI

struct DeveloperListView: View {
    
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...20, id: \.self) { key in
                    DeveloperRowView()
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Developer")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingProfile.toggle() }) {
                        Image(systemName: "person.crop.circle")
                            .accessibilityLabel("Profile")
                    }
                }
            }
        }
    }
}

struct DeveloperList_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperListView()
    }
}
