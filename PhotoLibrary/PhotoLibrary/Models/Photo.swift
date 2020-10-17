//
//  Photo.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import Foundation

struct Photo: Decodable {
    
    var id: String
    var urls: [String: String]
    
}
