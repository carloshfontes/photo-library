//
//  PhotoLibraryView.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

class PhotoLibraryView: UIView {
    
    // MARK: - Properties
    
    let photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(PhotoLibraryCollectionViewCell.self, forCellWithReuseIdentifier: PhotoLibraryCollectionViewCell.uniqueIdentifier)
        view.backgroundColor = .clear
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PhotoLibraryView: ViewCodable {
    
    func setupViewHierarchy() {
        addSubview(photoCollectionView)
    }
    
    func setupConstraints() {
        setupPhotoCollectionViewConstraints()
    }
    
    func setupPhotoCollectionViewConstraints(){
        photoCollectionView.anchor(top: topAnchor, paddingTop: ScreenSize.height * 0.2)
        photoCollectionView.anchor(left: leftAnchor, paddingLeft: ScreenSize.width * 0.05)
        photoCollectionView.anchor(right: rightAnchor, paddingRight: ScreenSize.width * 0.05)
        photoCollectionView.anchor(height: ScreenSize.height * 0.6)
    }
    
}


