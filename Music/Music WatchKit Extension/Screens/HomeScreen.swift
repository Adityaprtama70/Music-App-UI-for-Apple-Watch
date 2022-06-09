//
//  HomeScreen.swift
//  Music WatchKit Extension
//
//  Created by Adit on 09/10/21.
//

import SwiftUI

struct HomeScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    TopArtistView()
                    NavigationLink(
                        destination: ArtistsScreen(),
                        label: {
                            // melihat tambahan extra padding
                           // TopArtistView()
                    })
                        .opacity(0.05)
                }

                LazyVGrid (columns: columns, spacing: 8 ) {
                    ForEach(musics, id: \.self) { music in
                            ZStack {
                                MusicCardView(music: music)
                                NavigationLink(
                                    destination: SongsScreen(),
                                    label: {
                                })
                                .opacity(0.05)
                            }
                        }
                    }
                .padding(.vertical)
            }
        }
    }
}

struct TopArtistView: View {
    var body: some View {
        ZStack {
            Image("top_atrist")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 33)
                .cornerRadius(10.0)
                .opacity(0.5)
            HStack {
                Image("star")
                Text("Best Artist")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                Spacer()
                Image("play2")
            }
            .padding(.horizontal, 16)
        }
    }
}

struct MusicCardView: View {
    let music: Music
    var body: some View {
        ZStack {
            Image(music.poster)
                .resizable()
                .aspectRatio(contentMode: .fill) //by default ratio 1
                .cornerRadius(10.0)
                .opacity(0.75)
            
            Text(music.artistName)
                .font(.system(size: 7))
                .fontWeight(.bold)
            
        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
