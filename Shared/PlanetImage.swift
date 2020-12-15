//
//  PlanetImage.swift
//  PlanetList
//
//  Created by Kaoru Tachibana on 2020/12/13.
//

import SwiftUI

struct PlanetImage: View {

    @ObservedObject var imageLoader = ImageLoader()

    private let imageWidth: CGFloat = 128.0
    private let imageHeight: CGFloat = 72.0
    
    @State var imageURL: URL?

    private let imageBackColor: Color = Color(red: 0.945, green: 0.945, blue: 0.945)

    var body: some View {
        VStack(alignment: .leading) {
            
            if let loadedImage = imageLoader.image {
                Image(uiImage: loadedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth, height: imageHeight)
            } else {
                imageBackColor
                    .frame(width: imageWidth, height: imageHeight)
            }
            Spacer()
        }
        .onAppear(){
            if imageLoader.image == nil {
                imageLoader.loadImage(url: imageURL!)
            }
        }

    }
}

struct PlanetImage_Previews: PreviewProvider {
    static var previews: some View {
        PlanetImage()
    }
}
