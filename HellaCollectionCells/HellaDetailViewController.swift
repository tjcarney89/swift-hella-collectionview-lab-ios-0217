//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    var number: Int = 0
    var color: UIColor? = UIColor.white
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
        numberLabel.text = String(number)
    }

}
