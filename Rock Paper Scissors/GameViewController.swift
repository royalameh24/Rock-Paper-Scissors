//
//  GameViewController.swift
//  Rock Paper Scissors
//
//  Created by ROY ALAMEH on 11/29/22.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var RockOutlet: UIButton!
    @IBOutlet weak var PaperOutlet: UIButton!
    @IBOutlet weak var ScissorsOutlet: UIButton!
    
    @IBOutlet weak var RockView: UIImageView!
    @IBOutlet weak var PaperView: UIImageView!
    
    @IBOutlet weak var ScissorsView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = 15
        RockOutlet.layer.cornerRadius = CGFloat(radius)
        PaperOutlet.layer.cornerRadius = CGFloat(radius)
        ScissorsOutlet.layer.cornerRadius = CGFloat(radius)
        
        RockView.layer.masksToBounds = true
        RockView.layer.borderWidth = 5
        RockView.layer.borderColor = UIColor.white.cgColor
        PaperView.layer.masksToBounds = true
        PaperView.layer.borderWidth = 5
        PaperView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.masksToBounds = true
        ScissorsView.layer.borderWidth = 5
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        
    }
    
    @IBAction func RockAction(_ sender: UIButton) {
        RockView.layer.masksToBounds = true
        RockView.layer.borderWidth = 5
        RockView.layer.borderColor = UIColor.systemBlue.cgColor
        
        PaperView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.borderColor = UIColor.white.cgColor
    }
    @IBAction func PaperAction(_ sender: UIButton) {
        PaperView.layer.masksToBounds = true
        PaperView.layer.borderWidth = 5
        PaperView.layer.borderColor = UIColor.systemBlue.cgColor
        
        RockView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        
    }
    @IBAction func ScissorsAction(_ sender: UIButton) {
        ScissorsView.layer.masksToBounds = true
        ScissorsView.layer.borderWidth = 5
        ScissorsView.layer.borderColor = UIColor.systemBlue.cgColor
        
        RockView.layer.borderColor = UIColor.white.cgColor
        PaperView.layer.borderColor = UIColor.white.cgColor
        
    }
    
    
    
    @IBAction func tapOutlet(_ sender: Any) {
        print("Hello")
    }
}
