//
//  Created by Clement DIF on 11/01/2021.
//

import Foundation

class FactFetcher : ObservableObject {
    @Published var facts: [Fact] = []

    init(url: String) {
        let data: Data
        
        guard let url  = URL(string: url) else { return }
        
        do {
            data = try Data(contentsOf: url)
        } catch {
            fatalError("Couldn't load the JSON located at the url: \(url):\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            facts = try decoder.decode([Fact].self, from: data)
        } catch {
            fatalError("Couldn't parse the JSON as \(Fact.self):\n\(error)")
        }
    }
}
