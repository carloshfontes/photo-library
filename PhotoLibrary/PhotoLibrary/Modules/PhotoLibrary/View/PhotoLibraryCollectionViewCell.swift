//
//  PhotoLibraryCollectionViewCell.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

class PhotoLibraryCollectionViewCell: UICollectionViewCell, Identifiable {
    
    var photoBackgroundUIImageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .black
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

extension PhotoLibraryCollectionViewCell: ViewCodable {
    func setupViewHierarchy() {
        addSubview(photoBackgroundUIImageView)
    }
    
    func setupConstraints() {
        setupPhotoBackgroundUIImageView()
    }
    
    func setupPhotoBackgroundUIImageView(){
        photoBackgroundUIImageView.anchor(top: topAnchor)
        photoBackgroundUIImageView.anchor(left: leftAnchor)
        photoBackgroundUIImageView.anchor(right: rightAnchor)
        photoBackgroundUIImageView.anchor(bottom: bottomAnchor)
        photoBackgroundUIImageView.layer.cornerRadius = ScreenSize.height * 0.04
        photoBackgroundUIImageView.layer.masksToBounds = false
        photoBackgroundUIImageView.clipsToBounds = true
    }
    
    
}
