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
    
    
    init(window: UIWindow?){
        self.window = window
        self.presenter = UINavigationController()
    }
    
    
    // MARK: - Methods
    
    func start() {
        
        guard let window = self.window else { return }
        
        window.rootViewController = presenter
        window.makeKeyAndVisible()
    }
    
    
}
