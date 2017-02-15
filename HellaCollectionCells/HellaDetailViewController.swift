//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by TJ Carney on 2/15/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number: String?
    var backgroundColor: UIColor?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let number = number {
            numberLabel.text = number
            view.backgroundColor = backgroundColor
        }
    }
    

}
