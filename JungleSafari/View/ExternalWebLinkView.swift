//
//  ExternalWebLinkView.swift
//  JungleSafari
//
//  Created by Archit Patel on 2021-10-22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    var body: some View {
        
        GroupBox {
            
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.com"))!)
                }
                .foregroundColor(.accentColor)
            } //. HStack
            
        } //. Box
        
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
    }
}
