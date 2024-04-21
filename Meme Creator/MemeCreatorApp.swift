//
//  MemeCreatorApp.swift
//  Meme Creator
//
//  Created by Darian Mitchell  on 2024/4/21.
//

import SwiftUI

@main
struct MemeCreatorApp: App {
    @StateObject private var fetcher = PandaCollectionFetcher()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MemeCreator()
                    .environmentObject(fetcher)
            }
        }
    }
}
