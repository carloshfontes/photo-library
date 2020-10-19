//
//  UIImageViewExtension.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(imageUrl: String){
        self.kf.setImage(with: URL(string: imageUrl))
    }
}
