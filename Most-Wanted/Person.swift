//
//  Created by Clement DIF on 11/01/2021.
//

struct Person: Hashable, Codable {
    var title: String?
    private var images: [Images] = []

    struct Images: Hashable, Codable {
        var large: String?
        var thumb: String?
        var original: String?
    }
}
