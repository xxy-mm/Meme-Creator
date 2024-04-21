//
//  Panda.swift
//  Meme Creator
//
//  Created by Darian Mitchell  on 2024/4/21.
//

import Foundation

struct Panda: Codable {
    var description: String
    var imageUrl: URL?

    static let defaultPanda = Panda(
        description: "Cute Panda",
        imageUrl: URL(string: "https://assets.devpubs.apple.com/playgrounds/_assets/pandas/pandaBuggingOut.jpg")
    )
}

struct PandaCollection: Codable {
    var sample: [Panda]
}
