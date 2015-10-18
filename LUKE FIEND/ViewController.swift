//
//  ViewController.swift
//  LUKE FIEND
//
//  Created by Brandon Billstrand on 10/17/15.
//  Copyright © 2015 Brandon Billstrand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(sender: AnyObject) {
        let array = ["India Mahal", "Varsity Clubhouse", "China 1", "Scotty's Brewhouse", "Egyptian Cafe & Hooka Bar", "Papa Johns - Beck Ln", "Chumley's", "Chumley's"]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        myLabel.text = array[randomIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

