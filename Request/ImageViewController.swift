//
//  ImageViewController.swift
//  Request
//
//  Created by Anna on 23.06.17.
//  Copyright © 2017 Anna. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
   
    @IBOutlet weak var fullScreenImage: UIImageView!
    
    var recievedImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullScreenImage.image = recievedImage

       
    }



}
