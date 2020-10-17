//
//  Descriptable.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 17/10/20.
//

import Foundation

protocol Descriptable {
    
    var description: String { get }
}

protocol ErrorDescriptable: Descriptable {}
