//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Girish Sami on 12/4/17.
//  Copyright © 2017 PR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        for x in 0...2{
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            print("Content Size: \(contentWidth)")
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
    
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: scrollView .frame.size.width * CGFloat(images.count), height: self.view.frame.size.height)
        
    }

}

