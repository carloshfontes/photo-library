//
//  PhotoLibraryView.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

class PhotoLibraryView: UIView {
    
    let photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(PhotoLibraryCollectionViewCell.self, forCellWithReuseIdentifier: PhotoLibraryCollectionViewCell.uniqueIdentifier)
        return view
    }()
}


