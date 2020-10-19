//
//  PhotoLibraryViewModel.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import Foundation

protocol PhotoLibraryDelegate: class {
    func willLoadData()
    func didLoadData(message: String?)
}

protocol PhotoLibraryViewModelType {
    var delegate: PhotoLibraryDelegate? { get set }
    var photos: [Photo] { get set }
    func loadData()
}

final class PhotoLibraryViewModel: PhotoLibraryViewModelType {

    weak var delegate: PhotoLibraryDelegate?
    var photos: [Photo] = []
    
    func loadData() {
        let photoClient = PhotoClient()
        photoClient.getRandomPhotos { [weak self] (result) in
            guard let self = self else { return }
            switch result {
                
            case .success(let photos):
                self.photos = photos
                self.delegate?.didLoadData(message: nil)
            case .failure(let error):
                print("DEBUG: photo view model: ",error.description)
                self.delegate?.didLoadData(message: error.description)

            }
        }
    }
}
