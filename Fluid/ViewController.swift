//
//  ViewController.swift
//  Fluid
//
//  Created by Bernard Huff on 7/16/18.
//  Copyright © 2018 Bernard Huff. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Take image data from UIImageView
        
        let data = UIImageJPEGRepresentation(imageView.image!, 0.5)
        
//        Convert the image to file below.
        
        let file = PFFile(name: "picture.jpg", data: data!)

        let table = PFObject(className: "messages")
        table["sender"] = "Herio"
        table["Receiver"] = "David"
        table["picture"] = data
    }
}
