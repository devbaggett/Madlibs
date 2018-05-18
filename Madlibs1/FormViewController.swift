//
//  FormViewController.swift
//  Madlibs1
//
//  Created by Devin Baggett on 5/17/18.
//  Copyright © 2018 devbaggett. All rights reserved.
//

import UIKit

protocol CanReceive {
    // single required method
    func dataReceived(by controller: FormViewController, adjective: String, verb1: String, verb2: String, noun: String)
}


class FormViewController: UIViewController {
    
    var delegate: CanReceive?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var verb1Field: UITextField!
    @IBOutlet weak var verb2Field: UITextField!
    @IBOutlet weak var nounField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataReceived(by: self, adjective: textField.text!, verb1: verb1Field.text!, verb2: verb2Field.text!, noun: nounField.text!)
        dismiss(animated: true, completion: nil)
    }
}
