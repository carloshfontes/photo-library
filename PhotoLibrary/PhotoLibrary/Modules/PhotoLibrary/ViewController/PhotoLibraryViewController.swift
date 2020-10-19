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
    
    private lazy var photoLibraryCollectionDataSource = PhotoLibraryCollectionViewDataSource(photos: viewModel.photos)
    
    private var photoLibraryCollectionDelegate = PhotoLibraryCollectionViewDelegate()
    
    
    let photoLibraryView: PhotoLibraryView = {
        let view = PhotoLibraryView(frame: .zero)
        view.backgroundColor = .white
        return view
    }()
    
    
    init(viewModel: PhotoLibraryViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.view = photoLibraryView

    
        self.viewModel.delegate = self
        self.viewModel.loadData()
        
        setupRefresh()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setupUI()
    }
    // MARK: - Methods
    
    private func setupUI(){
        setupNavigationController()
        setupNavigationControllerTitle("Photos", withColor: .white)
    }
    
    private func setupRefresh(){
        photoLibraryView.refreshControl.addTarget(self, action: #selector(handleRefreshControl), for: .valueChanged)
    }
    
    // MARK: - Selectors
    
    @objc func handleRefreshControl(){
        print("DEBUG: control on fire")
        self.viewModel.loadData()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - PhotoLibrary Delegate
extension PhotoLibraryViewController: PhotoLibraryDelegate {
    
    func willLoadData() {
        
    }
    
    func didLoadData(message: String?) {
        
        if let message = message {
            self.showError(with: message)
        }else {
            DispatchQueue.main.async {
                self.photoLibraryView.photoCollectionView.dataSource = self.photoLibraryCollectionDataSource
                self.photoLibraryView.photoCollectionView.delegate = self.photoLibraryCollectionDelegate
                self.photoLibraryView.photoCollectionView.reloadData()
            }
        }
        
        
    }
    
    
}
