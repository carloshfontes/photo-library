//
//  UIViewControler.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

extension UIViewController {
    
    func setupNavigationController(){
        self.view.backgroundColor = .clear
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    func setupNavigationControllerTitle(_ title: String, withColor color: UIColor = .black) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = title
        self.navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: color]
    }
}
