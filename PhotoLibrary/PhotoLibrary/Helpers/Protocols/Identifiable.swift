//
//  Identifiable.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import Foundation

protocol Identifiable {
    static var uniqueIdentifier: String { get }
}

extension Identifiable {
    static var uniqueIdentifier: String {
        String(describing: self)
    }
}

