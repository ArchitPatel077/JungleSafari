//
//  InsetFactView.swift
//  JungleSafari
//
//  Created by Archit Patel on 2021-10-22.
//

import SwiftUI

struct InsetFactView: View {
    
    //MARK: - Properties
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //. Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 120, idealWidth: 168, maxHeight: 200)
        } //. Box
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
