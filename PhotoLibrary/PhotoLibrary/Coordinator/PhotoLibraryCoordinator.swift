//
//  PhotoLibraryCoordinator.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

final class PhotoLibraryCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var presenter: UINavigationController
    private var photoLibraryViewController: PhotoLibraryViewController
    
    init(presenter: UINavigationController){
        self.presenter = presenter
        
        let photoLibraryViewModel = PhotoLibraryViewModel()
        self.photoLibraryViewController = PhotoLibraryViewController(viewModel: photoLibraryViewModel)
    }
    
    // MARK: - Methods
    
    func start() {
        
        self.presenter.pushViewController(photoLibraryViewController, animated: true)
    }
    
    
}
