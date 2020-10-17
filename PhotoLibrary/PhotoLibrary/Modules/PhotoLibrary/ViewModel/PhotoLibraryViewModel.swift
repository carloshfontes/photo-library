//
//  PhotoLibraryViewModel.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import Foundation

protocol PhotoLibraryDelegate: class {
    func willLoadData()
    func didLoadData()
}

protocol PhotoLibraryViewModelType {
    var delegate: PhotoLibraryDelegate? { get set }
    var photos: [Photo] { get set }
}

final class PhotoLibraryViewModel: PhotoLibraryViewModelType {
    
    weak var delegate: PhotoLibraryDelegate?
    var photos: [Photo] = []
}
