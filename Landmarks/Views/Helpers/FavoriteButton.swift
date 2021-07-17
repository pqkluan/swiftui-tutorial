//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Pham Quan Khiet Luan on 7/17/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButton(isSet: .constant(true))
            FavoriteButton(isSet: .constant(false))
        }.previewLayout(
            .fixed(width: 48, height: 48)
        )
    }
}
