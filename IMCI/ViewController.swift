//
//  ViewController.swift
//  IMCI
//
//  Created by waruindungu on 18/01/2016.
//  Copyright © 2016 Ministry of Health. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollController: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollController)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

