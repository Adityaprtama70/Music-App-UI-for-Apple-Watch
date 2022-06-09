//
//  ArtistsScreen.swift
//  Music WatchKit Extension
//
//  Created by Adit on 10/10/21.
//

import SwiftUI

struct ArtistsScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columns, spacing: 8) {
                    ForEach(artists, id: \.self) { artist in
                        ArtistCardView(artist: artist)
                    }
                }
            }
        }
        .navigationTitle("Artist")
    }
}

struct ArtistCardView: View {
    let artist: Artist
    var body: some View {
        VStack {
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(5.0)
            Text(artist.name)
                .font(.system(size: 7))
                .fontWeight(.bold)
                .padding(.top, 2)
        }
    }
}


struct ArtistsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsScreen()
    }
}
