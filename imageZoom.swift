//
//  imageZoom.swift
//  IMCI
//
//  Created by waruindungu on 26/02/2016.
//  Copyright © 2016 Ministry of Health. All rights reserved.
//

import UIKit
class imageZoom: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.contentSize = imageView.bounds.size
            // scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
            //scrollView.contentOffset = CGPoint(x: 1000, y: 450)
        
       // scrollView.delegate = this
            // scrollView.minimumZoomScale = 0.1
            // scrollView.maximumZoomScale = 4.0
            // scrollView.zoomScale = 0.3
        
        setZoomScale()
            //   scrollView.contentSize = CGSizeMake(400, 1050)
            // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidLayoutSubviews() {
        scrollView.scrollEnabled = true
        // Do any additional setup after loading the view
        scrollView.contentSize = CGSizeMake(400, 1050)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setZoomScale() {
        let imageViewSize = imageView.bounds.size
        let scrollViewSize = scrollView.bounds.size
        let widthScale = scrollViewSize.width / imageViewSize.width
        let heightScale = scrollViewSize.height / imageViewSize.height
        
        scrollView.minimumZoomScale = min(widthScale, heightScale)
        scrollView.zoomScale = 1.0
    }
    
}
