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
    
    //MARK: Outlets
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var computerChoiceImageView: UIImageView!
    @IBOutlet weak var yourChoiceLabel: UILabel!
    @IBOutlet weak var yourChoiceImageView: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rockButtonTapped(_ sender: Any) {
        rockChoice()
    }
    @IBAction func paperButtonTapped(_ sender: Any) {
        paperChoice()
    }
    @IBAction func scissorsButtonTapped(_ sender: Any) {
        scisscorsChoice()
    }

    func randomComputerChoice() -> String? {
        let choices = [game.rock, game.paper, game.scissors]
        return choices.randomElement()
    }
    
    func rockChoice() {
        guard let computerChoice = randomComputerChoice() else { return }
        yourChoiceLabel.text = "Your choice is: rock"
        computerChoiceLabel.text = "Computer choice is: " + (computerChoice)
        yourChoiceImageView.image = UIImage(named: "rock")
        computerChoiceImageView.image = UIImage(named: computerChoice)
        if computerChoice == game.rock {
            winnerLabel.text = "YOU TIE!!!"
        } else if computerChoice == game.paper {
            winnerLabel.text = "YOU LOSE!!!!"
        } else {
            winnerLabel.text = "YOU WIN!!!"
        }
    }
    
    func paperChoice() {
        guard let computerChoice = randomComputerChoice() else { return }
        yourChoiceLabel.text = "Your choice is: paper"
        computerChoiceLabel.text = "Computer choice is: " + computerChoice
        yourChoiceImageView.image = UIImage(named: "paper")
        computerChoiceImageView.image = UIImage(named: computerChoice)
        if computerChoice == game.rock {
            winnerLabel.text = "YOU WIN!!!"
        } else if computerChoice == game.paper {
            winnerLabel.text = "YOU TIE!!!!"
        } else {
            winnerLabel.text = "YOU LOSE!!!"
        }
    }
    
    func scisscorsChoice() {
        guard let computerChoice = randomComputerChoice() else { return }
        yourChoiceLabel.text = "Your choice is: scissors"
        computerChoiceLabel.text = "Computer choice is: " + computerChoice
        yourChoiceImageView.image = UIImage(named: "scissors")
        computerChoiceImageView.image = UIImage(named: computerChoice)
        if computerChoice == game.rock {
            winnerLabel.text = "YOU LOSE!!!"
        } else if computerChoice == game.paper {
            winnerLabel.text = "YOU WIN!!!!"
        } else {
            winnerLabel.text = "YOU TIE!!!"
        }
    }
} // end of class

