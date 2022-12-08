//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by ROY ALAMEH on 11/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextField!
    
    static var highScore = UserDefaults.standard
    static var highScoreName = "Guest"
    static var highScorePercentage = 0.0
    static var currentName = "Guest"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = ViewController.highScore.string(forKey: "name") {
            ViewController.highScoreName = name
        }
        else {
            ViewController.highScore.set(ViewController.highScoreName, forKey: "name")
        }
        ViewController.highScorePercentage = ViewController.highScore.double(forKey: "percentage")
    }
    
    @IBAction func EnterAction(_ sender: UIButton) {
        var name = "Guest"
        if let temp = textFieldOutlet.text {
            name = temp
        }
        convertToStatic(name: name)
    }
    
    
    func convertToStatic (name: String) {
        ViewController.currentName = name
    }


}

