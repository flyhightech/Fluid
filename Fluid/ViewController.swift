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

        let object = PFObject(className: "testObject")
        object["name"] = "Bill"
        object["last name"] = "Foster"
        object.saveInBackground { (success, error) in
           print("Save successfully.")
            
        } 
    }
}
