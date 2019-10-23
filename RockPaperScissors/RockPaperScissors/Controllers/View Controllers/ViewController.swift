//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Josh Sparks on 10/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func randomComputerChoice() -> String? {
        let choices = [game.rock, game.paper, game.scissors]
        return choices.randomElement()
    }
    
    func rockChoice {
        let computerChoice = randomComputerChoice()
        yourChoiceLabel.text = "Rock"
        computerChoiceLabel.text = "\(computerChoice)"
        youChoiceImageView.image = UIImage(named: "Rock")
        computerChoiceImageView.image = UIImage(named: "\(computerChoiceLabel.text)")
    }
    
    
    
    
} // end of class

