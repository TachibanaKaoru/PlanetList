//
//  ImageLoader.swift
//  PlanetList
//
//  Created by Kaoru Tachibana on 2020/12/13.
//

import Combine
import Foundation
import UIKit

class ImageLoader: ObservableObject {

    @Published var image: UIImage? = nil
    
    private var cancellable: AnyCancellable?

    func loadImage(url: URL) {

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)

    }

    func cancel() {
        cancellable?.cancel()
    }

}
