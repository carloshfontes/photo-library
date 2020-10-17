//
//  AppCoordinator.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    // MARK: Properties
    
    private let window: UIWindow?
    var presenter: UINavigationController
    private var photoLibraryCoordinator: PhotoLibraryCoordinator
    
    
    init(window: UIWindow?){
        self.window = window
        self.presenter = UINavigationController()
        
        self.photoLibraryCoordinator = PhotoLibraryCoordinator(presenter: presenter)
    }
    
    
    // MARK: - Methods
    
    func start() {
        
        guard let window = self.window else { return }
        
        window.rootViewController = presenter
        self.photoLibraryCoordinator.start()
        window.makeKeyAndVisible()
    }
    
    
}
