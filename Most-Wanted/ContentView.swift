//
//  ContentView.swift
//  Most-Wanted
//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WantedRow(fact: facts[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
