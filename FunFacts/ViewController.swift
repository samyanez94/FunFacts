//
//  AppDelegate.swift
//  FunFacts
//
//  Created by Samuel Yanez on 02/01/17.
//  Copyright © 2017 Samuel Yanez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get random first fact
        funFactLabel.text = factModel.getRandomFact()
    }
 
    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }
}
