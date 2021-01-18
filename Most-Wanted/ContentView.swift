//
//  ContentView.swift
//  Most-Wanted
//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

struct ContentView: View {
    var facts: [Fact]
    
    var body: some View {
        WantedRow(fact: facts[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let factFetcher = FactFetcher(url: "https://api.fbi.gov/wanted/v1/list")
        ContentView(facts: factFetcher.facts)
    }
}
