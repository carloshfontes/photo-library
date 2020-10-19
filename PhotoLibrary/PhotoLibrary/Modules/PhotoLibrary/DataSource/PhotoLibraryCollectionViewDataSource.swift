//
//  PhotoLibraryDataSource.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import UIKit

class PhotoLibraryCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var photos: [Photo]
    
    init(photos: [Photo] = []){
        self.photos = photos
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoLibraryCollectionViewCell.uniqueIdentifier, for: indexPath) as? PhotoLibraryCollectionViewCell else {
            return UICollectionViewCell()
        }
        let photo = photos[indexPath.row]
        cell.photoBackgroundUIImageView.setImage(imageUrl: photo.urls["thumb"] ?? "")
        return cell
    }
    
    
}
