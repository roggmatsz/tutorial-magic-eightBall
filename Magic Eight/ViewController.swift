//
//  ViewController.swift
//  Magic Eight
//
//  Created by Rogger Matamoros on 5/29/16.
//  Copyright © 2016 Roggmatz. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    let adviceList = [
        "Yes",
        "No",
        "Ray says do et!",
        "Maybe",
        "Try again later",
        "How can I know",
        "Totally",
        "Never"
    ]
    
    @IBOutlet weak var adviceLabel: NSTextField!
    @IBOutlet weak var ballImageView: NSImageView!
    @IBOutlet weak var welcomeLabel: NSTextField!
    @IBOutlet weak var nameTextField: NSTextField!
    
    @IBAction func handleBallClick(sender: AnyObject) {
        if let advice = adviceList.randomElement {
            adviceLabel.stringValue = advice
            adviceLabel.hidden = false
            ballImageView.image = NSImage(named: "magic8ball")
        } else {
            adviceLabel.hidden = true
            ballImageView.image = NSImage(named: "8ball")
        }
    }
    
    @IBAction func handleWelcome(sender: AnyObject) {
        welcomeLabel.stringValue = "Hello \(nameTextField.stringValue) !"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        adviceLabel.hidden = true
        ballImageView.image = NSImage(named: "8ball")
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension Array {
    var randomElement:Element? {
        if count < 1 { return .None }
        let index = arc4random_uniform(UInt32(count))
        return self[Int(index)]
    }
}

