//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by Ehsan Zeinalinia on 5/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FilteredMovieListView()
                .tabItem {
                    Label("Movies", systemImage: "film.stack")
                }
            
            FriendListView()
                .tabItem {
                    Label("Friends", systemImage: "person.and.person")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
