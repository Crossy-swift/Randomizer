//
//  ViewController.swift
//  Randomizer
//
//  Created by Артем Репин on 17.07.2021.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getResultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minValueLabel.text
        settingsVC.maximumValue = maxValueLabel.text
    }

    @IBAction func getResultButtonTapped() {
        let minimumNumber = Int(String(minValueLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maxValueLabel.text ?? "")) ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minValueLabel.text = settingsVC.minValueTF.text
        maxValueLabel.text = settingsVC.maxValueTF.text
    }
}

