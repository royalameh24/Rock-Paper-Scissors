//
//  GameViewController.swift
//  Rock Paper Scissors
//
//  Created by ROY ALAMEH on 11/29/22.
//

import UIKit
import simd

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        winner.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableOutlet.dequeueReusableCell(withIdentifier: "resultCell")!
        cell.textLabel?.text = winner[indexPath.row]
        return cell
    }
    
    var winner = ["Play to win!"]
    var winningMove = ["Beat the computer!"]
    var computerPerception = ["Use the slider to increase or decrease the comptuer perception"]
    
    
    
    @IBOutlet weak var RockOutlet: UIButton!
    @IBOutlet weak var PaperOutlet: UIButton!
    @IBOutlet weak var ScissorsOutlet: UIButton!
    @IBOutlet weak var RockView: UIImageView!
    @IBOutlet weak var PaperView: UIImageView!
    @IBOutlet weak var ScissorsView: UIImageView!
    @IBOutlet weak var InformationOutlet: UILabel!
    @IBOutlet weak var ComputerView: UIImageView!
    @IBOutlet weak var SliderOutlet: UISlider!
    @IBOutlet weak var TableOutlet: UITableView!
    
    let dictionaryNames = ["Rock" : 1, "Paper" : 2, "Scissors" : 3]
    let dictionaryNums = [1: "Rock", 2 : "Paper", 3: "Scissors"]
    let lossDictionary = ["Rock" : "Paper", "Paper" : "Scissors", "Scissors" : "Rock"]
    var selection = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableOutlet.delegate = self
        TableOutlet.dataSource = self
        
        let radius = 15
        RockOutlet.layer.cornerRadius = CGFloat(radius)
        PaperOutlet.layer.cornerRadius = CGFloat(radius)
        ScissorsOutlet.layer.cornerRadius = CGFloat(radius)
        
        RockView.layer.masksToBounds = true
        RockView.layer.borderWidth = 5
        RockView.layer.borderColor = UIColor.white.cgColor
        RockView.layer.cornerRadius = CGFloat(radius)
        PaperView.layer.masksToBounds = true
        PaperView.layer.borderWidth = 5
        PaperView.layer.borderColor = UIColor.white.cgColor
        PaperView.layer.cornerRadius = CGFloat(radius)
        ScissorsView.layer.masksToBounds = true
        ScissorsView.layer.borderWidth = 5
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.cornerRadius = CGFloat(radius)
        
    }
    
    @IBAction func RockAction(_ sender: UIButton) {
        RockView.layer.masksToBounds = true
        RockView.layer.borderWidth = 5
        RockView.layer.borderColor = UIColor.systemBlue.cgColor
        
        PaperView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        
        selection = 1
    }
    @IBAction func PaperAction(_ sender: UIButton) {
        PaperView.layer.masksToBounds = true
        PaperView.layer.borderWidth = 5
        PaperView.layer.borderColor = UIColor.systemBlue.cgColor
        
        RockView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        
        selection = 2
        
    }
    @IBAction func ScissorsAction(_ sender: UIButton) {
        ScissorsView.layer.masksToBounds = true
        ScissorsView.layer.borderWidth = 5
        ScissorsView.layer.borderColor = UIColor.systemBlue.cgColor
        
        RockView.layer.borderColor = UIColor.white.cgColor
        PaperView.layer.borderColor = UIColor.white.cgColor
        
        selection = 3
    }
    
    
    
    @IBAction func tapOutlet(_ sender: Any) {
        print("Hello")
        guard selection != 0 else {
            InformationOutlet.text = "No selection made, select before entering (triple tap)"
            clearSelection()
            return
        }
        let rand = Int(Double.random(in: 0...1) * 1000000000)
        let sliderNum = Int(SliderOutlet.value * 1000000000)
        if (rand <= sliderNum) {
            let computerChoice = lossDictionary[dictionaryNums[selection]!]!
            InformationOutlet.text = computerChoice
        }
        else {
            let newRand = Int.random(in: 1...3)
            InformationOutlet.text = dictionaryNums[newRand]!
        }
        
        clearSelection()
    }
    
    func clearSelection() {
        RockView.layer.borderColor = UIColor.white.cgColor
        PaperView.layer.borderColor = UIColor.white.cgColor
        ScissorsView.layer.borderColor = UIColor.white.cgColor
        selection = 0
    }
}
