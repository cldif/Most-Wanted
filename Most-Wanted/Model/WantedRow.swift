//
//  Created by Clement DIF on 11/01/2021.
//

import SwiftUI

struct WantedRow: View {
    var fact: Fact
    @State var image: UIImage?
    
    func loadImage(url: String?) {
        guard let url = url else {
            return
        }
        
        guard let parsedUrl = URL(string: url) else {
            return
        }
        
        guard let data = try? Data(contentsOf: parsedUrl) else {
            return
        }
        
        image = UIImage(data: data)
    }
    
    var body: some View {
        HStack {
            if let image = image {
                Image(uiImage: image)
            }
            Text(fact.title ?? "untitled")
            
            Spacer()
        }.onAppear(perform: {
            loadImage(url: fact.images[0].thumb)
        })
    }
}

struct WantedRow_Previews: PreviewProvider {
    static var previews: some View {
        WantedRow(fact: facts[0])
    }
}
