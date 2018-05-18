//
//  ViewController.swift
//  Madlibs1
//
//  Created by Devin Baggett on 5/17/18.
//  Copyright © 2018 devbaggett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    
    var adjective: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func composeButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToForm", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToForm" {
            
            let destinationVC = segue.destination as! FormViewController
            
            destinationVC.delegate = self
        }
    }
    
    // implement required delegate method
    func dataReceived(by controller: FormViewController, adjective: String, verb1: String, verb2: String, noun: String) {
        label.text = "We are having a perfectly \(adjective) time now. Later we will \(verb1) and \(verb2) in the \(noun)."
    }
    
}

