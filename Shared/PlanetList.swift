//
//  PlanetList.swift
//  PlanetList
//
//  Created by Kaoru Tachibana on 2020/12/13.
//

import SwiftUI

struct PlanetList: View {
    var body: some View {
        List{
            
            PlanetRow(name: "Mercury", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/500px-Mercury_in_color_-_Prockter07_centered.jpg")
            PlanetRow(name: "Venus", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Galileo_Venus_global_view.jpg/440px-Galileo_Venus_global_view.jpg")
            PlanetRow(name: "Earth", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/540px-The_Earth_seen_from_Apollo_17.jpg")
            PlanetRow(name: "Mars", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/500px-OSIRIS_Mars_true_color.jpg")
            PlanetRow(name: "Jupitar", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Jupiter_by_Cassini-Huygens.jpg/500px-Jupiter_by_Cassini-Huygens.jpg")
            PlanetRow(name: "Saturn", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Saturn_PIA06077.jpg/500px-Saturn_PIA06077.jpg")
            PlanetRow(name: "Uranus", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/500px-Uranus2.jpg")
            PlanetRow(name: "Neptune", imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg/500px-Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg")
            
            
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        PlanetList()
    }
}
