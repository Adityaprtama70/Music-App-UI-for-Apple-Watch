//
//  SongsScreen1.swift
//  Music WatchKit Extension
//
//  Created by Adit on 11/10/21.
//

import SwiftUI

struct SongsScreen1: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image("john mayer")
                    .resizable()
                    .aspectRatio(1.76, contentMode: .fill)
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .opacity(0.3)
                
                VStack {
                    Spacer()
                    Text("John Mayer".uppercased())
                        .font(.system(size: 17))
                        .fontWeight(.bold)
                
                }
                .padding(.bottom)
            }
            .cornerRadius(10.0)
            
            ForEach(0 ..< songs1.count) { i in
                SongCardView(song: songs1[i], serialNum: i+1)
            }
            .padding(.top, 4)
        }
    }
}

struct SongCardView1: View {
    let song1: Song1
    let serialNum: Int
    
    var body: some View {
        HStack {
            Text("\(serialNum)")
                .fontWeight(.medium)
            
            Text(song1.name)
                .fontWeight(.medium)
            
            Spacer()
            
            Text("\(song1.duration) min")
                .fontWeight(.medium)
        }
        .font(.system(size: 10))
        .padding()
        .background(Color.black)
        .contrast(8.0)
    }
}

struct SongsScreen1_Previews: PreviewProvider {
    static var previews: some View {
        SongsScreen1()
    }
}
