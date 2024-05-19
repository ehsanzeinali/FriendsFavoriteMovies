//
//  FilteredMovieListView.swift
//  FriendsFavoriteMovies
//
//  Created by Ehsan Zeinalinia on 5/19/24.
//

import SwiftUI

struct FilteredMovieListView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationSplitView {
            MovieListView(titleFilter: searchText)
                .searchable(text: $searchText)
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
        }
    }
}

#Preview {
    FilteredMovieListView()
        .modelContainer(SampleData.shared.modelContainer)
}
