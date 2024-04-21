//
//  LoadableImage.swift
//  Meme Creator
//
//  Created by Darian Mitchell  on 2024/4/21.
//

import SwiftUI

struct LoadableImage: View {
    var imageMetadata: Panda
    
    var body: some View {
        AsyncImage(url: imageMetadata.imageUrl) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
                    .accessibilityHidden(true)
                    .accessibilityLabel(Text(imageMetadata.description))
            } else if phase.error != nil {
                VStack {
                    Image("pandaplaceholder")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                    Text("The pandas were all busy.")
                        .font(.title2)
                    Text("Please try again.")
                        .font(.title3)
                }
            }else {
                ProgressView()
            }
        }
    }
}

#Preview {
    LoadableImage(imageMetadata: Panda.defaultPanda)
}
