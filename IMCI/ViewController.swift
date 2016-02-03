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
        scroller.contentSize = CGSizeMake(400, 1000)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidLayoutSubviews() {
        scroller.scrollEnabled = true
        // Do any additional setup after loading the view
        scroller.contentSize = CGSizeMake(400, 1000)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


