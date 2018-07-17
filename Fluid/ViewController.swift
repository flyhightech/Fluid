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

    override func viewDidLoad() {
        super.viewDidLoad()

        let table = PFObject(className: "messages")
        table["sender"] = "Herio"
        table["Receiver"] = "David"
        table["picture"] = 
    }
}
