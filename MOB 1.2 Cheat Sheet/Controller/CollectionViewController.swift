//
//  CollectionViewController.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/10/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            
            if let flowLayout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                flowLayout.itemSize = CGSize(width: self.collectionView.bounds.width, height: 120)
            }
        }

        
        // Navbar Title
        navigationItem.title = "Collection View"
        
        collectionView?.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        // Do any additional setup after loading the view.
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! CustomCollectionViewCell
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item + 1)
    }
}

