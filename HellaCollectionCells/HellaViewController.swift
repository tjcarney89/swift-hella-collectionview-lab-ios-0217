//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
        
        switch indexPath.item {
        case 1, 2, 3, 5, 8, 13, 21, 34, 55, 89:
            cell.backgroundColor = UIColor.purple
        default:
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "HellaDetail" { return }
        if let dest = segue.destination as? HellaDetailViewController, let indexPath = collectionView.indexPathsForSelectedItems {
           let indexPaths = collectionView.indexPathsForSelectedItems!
            let selectedCell = sender as! UICollectionViewCell
            let indexPath = indexPaths[0]
            dest.number = "\(indexPath.item)"
            dest.backgroundColor = selectedCell.backgroundColor
            
            
            
            
        }
    }
    
}

