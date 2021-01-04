//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Lawrence ALLARD-JACQUIN on 04/01/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View{
    @Binding var isSet: Bool
    var body: some View {
        Button(action:{
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill": "star").foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Preview: PreviewProvider{
    static var previews: some View{
        FavoriteButton(isSet: .constant(true))
    }
}
