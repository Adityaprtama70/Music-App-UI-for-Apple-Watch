//
//  Music.swift
//  Music WatchKit Extension
//
//  Created by Adit on 08/10/21.
//

// Nama musik model
struct Music: Hashable {
    let artistName: String
    let poster: String
}

// Demo untuk musik

let musics = [
    Music(artistName: "John Mayer", poster: "poster_1"),
    Music(artistName: "Olivia Rodrigo", poster: "poster_2"),
    Music(artistName: "Rich Brian", poster: "poster_3"),
    Music(artistName: "Micah Edwards", poster: "poster_4"),
    Music(artistName: "Billie Eilish", poster: "poster_5"),
    Music(artistName: "Masyow", poster: "poster_6"),
    Music(artistName: "John K", poster: "poster_7"),
    Music(artistName: "Tom Misch", poster: "poster_8"),
    Music(artistName: "Ndarboy Genk", poster: "poster_9")
]
