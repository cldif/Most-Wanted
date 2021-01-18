//
//  Most_WantedApp.swift
//  Most-Wanted
//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

@main
struct Most_WantedApp: App {
    @ObservedObject var factFetcher = FactFetcher(url: "https://api.fbi.gov/wanted/v1/list")
    
    var body: some Scene {
        WindowGroup {
            ContentView(facts: factFetcher.facts)
        }
    }
}
