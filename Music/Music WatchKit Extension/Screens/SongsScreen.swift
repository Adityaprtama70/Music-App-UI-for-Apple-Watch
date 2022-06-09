//
//  SongsScreen.swift
//  Music WatchKit Extension
//
//  Created by Adit on 11/10/21.
//

import SwiftUI

struct SongsScreen: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image("olivia rodrigo")
                    .resizable()
                    .aspectRatio(1.76, contentMode: .fill)
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .opacity(0.3)
                
                VStack {
                    Spacer()
                    Text("Olivia Rodrigo".uppercased())
                        .font(.system(size: 17))
                        .fontWeight(.bold)
                    
                }
                .padding(.bottom)
            }
            .cornerRadius(10.0)
            
            ForEach(0 ..< songs.count) { i in
                SongCardView(song: songs[i], serialNum: i+1)
            }
            .padding(.top, 4)
        }
    }
}

struct SongCardView: View {
    let song: Song
    let serialNum: Int
    
    var body: some View {
        HStack {
            Text("\(serialNum)")
                .fontWeight(.medium)
            
            Text(song.name)
                .fontWeight(.medium)
            
            Spacer()
            
            Text("\(song.duration) min")
                .fontWeight(.medium)
        }
        .font(.system(size: 15))
        .padding()
        .background(Color.black)
        .contrast(8.0)
    }
}


struct SongsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongsScreen()
    }
}
