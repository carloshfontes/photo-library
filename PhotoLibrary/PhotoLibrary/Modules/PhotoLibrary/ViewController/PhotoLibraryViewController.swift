//
//  PhotoLibraryViewController.swift
//  PhotoLibrary
//
//  Created by Carlos Fontes on 16/10/20.
//

import UIKit

class PhotoLibraryViewController: UIViewController {
    
    // MARK: - Properties
    
    private var viewModel: PhotoLibraryViewModel
    
    
    
    
    init(viewModel: PhotoLibraryViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        viewModel.delegate = self
        
    }
    
    // MARK: - Methods
    
    private func setupUI(){
        setupNavigationController()
        setupNavigationControllerTitle("Photos", withColor: .black)
        view.backgroundColor = .white
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - PhotoLibrary Delegate
extension PhotoLibraryViewController: PhotoLibraryDelegate {
    
    func willLoadData() {
        
    }
    
    func didLoadData() {
        
    }
    
    
}
