//
//  Song.swift
//  Music WatchKit Extension
//
//  Created by Adit on 10/10/21.
//
//  Song Model

struct Song: Hashable {
    let name: String
    let duration: Int
}

let songs = [
    Song(name: "Traitor", duration: 3),
    Song(name: "Happier", duration: 2),
    Song(name: "Good 4 u", duration: 3),
    Song(name: "Driver License", duration: 4),
    Song(name: "Deja vu", duration: 3),
    Song(name: "Brutal", duration: 2),
]
