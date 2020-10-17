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
    func loadData()
}

final class PhotoLibraryViewModel: PhotoLibraryViewModelType {

    weak var delegate: PhotoLibraryDelegate?
    var photos: [Photo] = []
    
    func loadData() {
        photos.append(Photo(id: "aaa", urls: ["xx": "xx"]))
        photos.append(Photo(id: "aaa", urls: ["xx": "xx"]))
        photos.append(Photo(id: "aaa", urls: ["xx": "xx"]))
        photos.append(Photo(id: "aaa", urls: ["xx": "xx"]))
        delegate?.didLoadData()
        print("DEBUG: loaded")
    }
}
