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
        
        let topColor = UIColor(red: (15/255.0), green: (118/255.0), blue: (128/255.0), alpha: 1)
        let bottomColor = UIColor(red: (84/255.0), green: (187/255.0), blue: (187/255.0), alpha: 1)
        
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0,1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

