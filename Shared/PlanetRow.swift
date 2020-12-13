//
//  PlanetRow.swift
//  PlanetList
//
//  Created by Kaoru Tachibana on 2020/12/13.
//

import SwiftUI

struct PlanetRow: View {
    
    @State var name: String = ""
    @State var imageURL: String = ""
    
    @State var showActionSheet: Bool = false
    @State var backColor: Color = Color.white

    var body: some View {
        ZStack{
            backColor
            
            HStack{
                Text(name)
                    .fontWeight(.bold)
                PlanetImage(imageURL: URL(string: imageURL))
                
                // change color button
                Button(
                    action: {

                        backColor = Color.blue
                    },
                    label: {
                        Text("Press")
                            .allowsHitTesting(false)
                    })
                
                // show alert button
                Button(
                    action: {
                        self.showActionSheet.toggle()
                    },
                    label: {
                        Text("Show Alert")
                    }
                )
                .actionSheet(
                    isPresented: self.$showActionSheet,
                    content: {
                        requestActionSheet
                    }
                )
                .buttonStyle(BorderlessButtonStyle())

            }

        }
    }
    
    private var requestActionSheet: ActionSheet {

        let sheet = ActionSheet(
            title: Text(""),
            message: Text("This is alert."),
            buttons: [
                .default(
                    Text("OK"),
                    action: {
                        print("do something")
                    })
            ])
        return sheet
    }

}

struct PlanetRow_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRow()
    }
}
