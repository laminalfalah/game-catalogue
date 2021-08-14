//
//  GameRow.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import SwiftUI

struct GameRowView: View {
    var body: some View {
        VStack {
            Text("Game Row")
                .padding()
            Spacer()
            Label("Bookmark", systemImage: "bookmark")
        }
    }
}

struct GameRow_Previews: PreviewProvider {
    static var previews: some View {
        GameRowView()
    }
}
