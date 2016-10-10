//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var fibonacciSequence: [Int] {
        var arr: [Int] = []
        var i = 1
        while fibonacci(i) <= 1000 {
            arr.append(fibonacci(i))
            i += 1
        }
        return arr
    }
    
    @IBOutlet weak var hellaCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        hellaCollectionView.delegate = self
        hellaCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hellaCell", for: indexPath)
        
        cell.backgroundColor = UIColor.yellow
        
        if fibonacciSequence.contains(indexPath.row) {
            cell.backgroundColor = UIColor.purple
        }
        print(indexPath.row)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "detailSegue" { return }
        let cell = sender as! UICollectionViewCell
        let dest = segue.destination as! HellaDetailViewController
        guard let index = hellaCollectionView.indexPath(for: cell)?.row else { return }
        dest.color = cell.backgroundColor
        dest.number = index
    }
    
    func fibonacci(_ i: Int) -> Int {
        if i <= 2 {
            return 1
        } else {
            return fibonacci(i - 1) + fibonacci(i - 2)
        }
    }
}

