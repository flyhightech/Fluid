//
//  ViewController.swift
//  Fluid
//
//  Created by Bernard Huff on 7/16/18.
//  Copyright © 2018 Bernard Huff. All rights reserved.
//
//  Treat it like a investment

import UIKit
import Parse


class ViewController: UIViewController {

    @IBOutlet var picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = UIImageJPEGRepresentation(picture.image!, 0.5)
        
        let file = PFFile(name: "picture.jpg", data: data!)
        
        
        let table = PFObject(className: "messages")
        table["sender"] = "Bernard"
        table["receiver"] = "David"
        table["picture"] = file
        table["message"] = "Hello King"
        table.saveInBackground { (success:Bool, error:NSError?) in
            
            if success {
                print("Saved in server...you can continue.")
            } else {
                print("You messed up because of this, \(error) . Try a little harder Huff! You got it. 👍🏾")
            }
        } as! PFBooleanResultBlock
        
        
    }
}
