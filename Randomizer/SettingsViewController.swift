//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Артем Репин on 17.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
}
