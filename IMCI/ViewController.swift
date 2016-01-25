//
//  ViewController.swift
//  IMCI
//
//  Created by waruindungu on 18/01/2016.
//  Copyright © 2016 Ministry of Health. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidLayoutSubviews() {
        scroller.scrollEnabled = true
        // Do any additional setup after loading the view
        scroller.contentSize = CGSizeMake(400, 2300)
    }

}

