//
//  RandomPhotoService.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import Foundation

enum PhotoService {
    case random(count: Int)
}

extension PhotoService: ServiceProtocol {
    var path: String {
        switch self {
        
        case .random:
            return "https://api.unsplash.com/photos/random/"
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        
        case .random(let count):
            return [
            "client_id": BaseParameterPhoto.shared.apiKey,
            "count": count
            ]
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
