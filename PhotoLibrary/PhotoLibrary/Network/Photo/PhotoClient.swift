//
//  RandomPhotoClient.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import Foundation

struct PhotoClient: APIClient {
    
    var session: URLSession
    typealias randomFetchCompletion = (Result<[Photo], APIError>) -> Void
    
    init(configuration: URLSessionConfiguration){
        self.session = URLSession(configuration: configuration)
    }
    
    init(){
        self.init(configuration: .default)
    }
    
    func getRandomPhotos(completion: @escaping randomFetchCompletion){
        
        guard let request = PhotoService.random(count: 30).request else {
            return completion(.failure(.badRequest))
        }
        
        fetch(withRequest: request, withDecondingType: [Photo].self) { (result) in
            switch result {
            
            case .success(let photos):
                completion(.success(photos))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
    
}
