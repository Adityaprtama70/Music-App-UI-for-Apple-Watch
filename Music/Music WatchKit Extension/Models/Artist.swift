//
//  Artist.swift
//  Music WatchKit Extension
//
//  Created by Adit on 08/10/21.
//

import SwiftUI

// Nama musik model
struct Artist: Hashable {
    let name: String
    let image: String
}

// Demo untuk musik

let artists = [
    Artist(name: "Stephanie Poetri", image: "artist_1"),
    Artist(name: "Tom Misch", image: "artist_2"),
    Artist(name: "Clario", image: "artist_3"),
    Artist(name: "Masyow", image: "artist_4"),
    Artist(name: "Ramengvrl", image: "artist_5"),
    Artist(name: "Tuan 13", image: "artist_6"),
    Artist(name: "Anne Marie", image: "artist_7"),
    Artist(name: "John Mayer", image: "artist_8"),
    Artist(name: "Olivia Rodrigo", image: "artist_9"),
]

