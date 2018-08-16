//
//  ViewController.swift
//  Fluid
//
//  Created by Bernard Huff on 7/16/18.
//  Copyright © 2018 Bernard Huff. All rights reserved.
//
//  Test 1

import UIKit
import Parse


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = PFObject(className: "messages")
        table["sender"] = "Bernard"
        table["receiver"] = "David"
        
        
    }
}
