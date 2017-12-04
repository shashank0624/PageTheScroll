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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var contentWidth: CGFloat = 0.0
        for x in 0...2{
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            scrollView.addSubview(imageView)
            
            var newX : CGFloat = 0.0
            newX = self.view.frame.midX + self.view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            print("Content Size: \(contentWidth)")
            
            imageView.frame = CGRect(x: newX - 75, y: (self.view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        scrollView.contentSize = CGSize(width: self.view.frame.size.width * CGFloat(images.count), height: self.view.frame.size.height)
        
    }

}

