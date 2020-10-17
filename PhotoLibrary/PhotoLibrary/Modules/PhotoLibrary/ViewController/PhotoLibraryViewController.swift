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
    
        self.setupUI()
        self.viewModel.delegate = self
        self.viewModel.loadData()
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        print("DEBUG: didLoad")
        self.photoLibraryView.photoCollectionView.dataSource = photoLibraryCollectionDataSource
        self.photoLibraryView.photoCollectionView.delegate = photoLibraryCollectionDelegate
        self.photoLibraryView.photoCollectionView.reloadData()
    }
    
    
}
