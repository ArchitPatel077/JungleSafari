//
//  VideoModel.swift
//  JungleSafari
//
//  Created by Archit Patel on 2021-10-25.
//

import Foundation


struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
    
    //MARK: - Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
