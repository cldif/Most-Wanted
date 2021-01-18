//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

struct WantedRow: View {
    var fact: Fact
    @State var image: UIImage?
    
    private func loadImage(url: URL?) {
        guard let url = url else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        image = UIImage(data: data)
    }
    
    var body: some View {
        HStack {
            if let image = image {
                Image(uiImage: image)
            } else {
                Text("missing image")
            }
            Text(fact.title ?? "untitled")
            
            Spacer()
        }.onAppear(perform: {
            if let it = fact.images[0].thumb {
                loadImage(url: URL(string: it))
            } else {
                loadImage(url: Bundle.main.url(forResource: "unknown", withExtension: "png"))
            }
        })
    }
}

struct WantedRow_Previews: PreviewProvider {
    static var previews: some View {
        WantedRow(fact: facts[0])
    }
}
