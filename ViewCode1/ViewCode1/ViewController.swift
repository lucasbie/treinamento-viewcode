//
//  ViewController.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Private properties
    
    private var myCollectionView: UICollectionView?
    private let text = ["Lucas", "Filiper", "Daniel", "Paulo Cesar", "Vinicius"]
    
    // MARK: Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    // MARK: Privates methods
    
    private func setupCollectionView() {
        let view = UIView()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 24, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 350, height: 200)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(CustomCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView?.backgroundColor = UIColor.red
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView ?? UICollectionView())
        self.view = view
    }
}

// MARK: Extensions UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! CustomCell
        myCell.setupLabel(text: text[indexPath.row])
        
        return myCell
    }
}

// MARK: Extensions UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = SecondViewController()
        controller.text = text[indexPath.row]
        
        navigationController?.pushViewController(controller, animated: true)
    }
}
