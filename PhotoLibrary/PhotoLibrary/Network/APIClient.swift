//
//  APIClient.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import Foundation

protocol APIClient {
    
    var session: URLSession { get }
    
    func fetch<T: Decodable>(withRequest request: URLRequest, withDecondingType decoding: T.Type, completion: @escaping (Result<T, APIError>) -> Void)
    
}

extension APIClient {
    
    private func decode<T: Decodable>(data: Data, using: T.Type) -> T? {
        let decoder = JSONDecoder()
        
        guard let object = try? decoder.decode(T.self, from: data) else {
            return nil
        }

        return object
    }
    
    
    func fetch<T: Decodable>(withRequest request: URLRequest, withDecondingType decoding: T.Type, completion: @escaping (Result<T, APIError>) -> Void) {
        
        session.dataTask(with: request) { (optionalData, response, error) in
            
            guard let data = optionalData else {
                return
            }
            
            guard let object = self.decode(data: data, using: decoding.self) else {
                return completion(.failure(.decode))
            }
            
            completion(.success(object))
        }.resume()
        
    }
    
}
