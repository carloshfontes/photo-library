//
//  Coordinator.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var presenter: UINavigationController { get set }
    func start()
}
