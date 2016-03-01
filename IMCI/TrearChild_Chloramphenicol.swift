//
//  TrearChild_Chloramphenicol.swift
//  IMCI
//
//  Created by waruindungu on 01/03/2016.
//  Copyright © 2016 Ministry of Health. All rights reserved.

import UIKit

class TrearChild_Chloramphenicol: UIViewController, UIScrollViewDelegate {
    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "intramuscular_antibiotic.png"))
        
        scrollView = UIScrollView(frame: view.bounds)
        // scrollView.backgroundColor = UIColor.brownColor()
        scrollView.contentSize = imageView.bounds.size
        // scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        // scrollView.contentOffset = CGPoint(x: 1000, y: 450)
        
        scrollView.delegate = self
        // scrollView.minimumZoomScale = 0.1
        // scrollView.maximumZoomScale = 4.0
        // scrollView.zoomScale = 0.3
        
        setZoomScale()
        setupGestureRecognizer()
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        
    }
    
    func setupGestureRecognizer() {
        let doubleTap = UITapGestureRecognizer(target: self, action: "handleDoubleTap:")
        doubleTap.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTap)
    }
    
    func handleDoubleTap(recognizer: UITapGestureRecognizer) {
        
        if (scrollView.zoomScale > scrollView.minimumZoomScale) {
            scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
        } else {
            scrollView.setZoomScale(scrollView.maximumZoomScale, animated: true)
        }
    }
    func setZoomScale() {
        let imageViewSize = imageView.bounds.size
        let scrollViewSize = scrollView.bounds.size
        let widthScale = scrollViewSize.width / imageViewSize.width
        let heightScale = scrollViewSize.height / imageViewSize.height
        
        scrollView.minimumZoomScale = min(widthScale, heightScale)
        scrollView.zoomScale = 1.0
    }
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    override func viewWillLayoutSubviews() {
        setZoomScale()
    }
}

