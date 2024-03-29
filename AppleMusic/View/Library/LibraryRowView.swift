//
//  LibraryRowView.swift
//  AppleMusic
//
//  Created by Mакулов Евгений on 08.09.2022.
//

import SwiftUI

struct LibraryRowView: View {

    var libraryItem: LibraryRow
    let onTap: (() -> ())?

    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: libraryItem.imageName)
                .foregroundColor(.red)
            Text(libraryItem.title)
                .font(.title3)
                .fontWeight(.light)
        }
        .onTapGesture {
            onTap?()
        }
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(libraryItem: LibraryRow(title: "Плейлисты", imageName: "music.mic")) {
        }
        .previewLayout(.fixed(width: 300, height: 50))
    }
}
