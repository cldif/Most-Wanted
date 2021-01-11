//
//  Created by Clement DIF on 11/01/2021.
//

struct Fact: Hashable, Codable {
    var title: String?
    var images: [Images] = []
    
    struct Images: Hashable, Codable {
        var large: String?
        var thumb: String?
        var original: String?
    }
}
