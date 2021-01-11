//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

struct WantedRow: View {
    var fact: Fact
    
    var body: some View {
        HStack {
            Text(fact.images[0].thumb ?? "no image")
            Text(fact.title ?? "untitled")
            
            Spacer()
        }
    }
}

struct WantedRow_Previews: PreviewProvider {
    static var previews: some View {
        WantedRow(fact: facts[0])
    }
}
