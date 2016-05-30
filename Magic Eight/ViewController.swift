//
//  ViewController.swift
//  Magic Eight
//
//  Created by Rogger Matamoros on 5/29/16.
//  Copyright © 2016 Roggmatz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var adviceLabel: NSTextField!
    @IBOutlet weak var ballImageView: NSImageView!
    @IBOutlet weak var welcomeLabel: NSTextField!
    @IBOutlet weak var nameTextField: NSTextField!
    
    @IBAction func handleBallClick(sender: AnyObject) {
    }
    
    @IBAction func handleWelcome(sender: AnyObject) {
        welcomeLabel.stringValue = "Hello \(nameTextField.stringValue) !"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

