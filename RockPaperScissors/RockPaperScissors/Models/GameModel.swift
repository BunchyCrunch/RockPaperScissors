//
//  GameModel.swift
//  RockPaperScissors
//
//  Created by Michael Di Cesare on 10/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import Foundation



class Game {
    var rock: String
    var paper: String
    var scissors: String
    
    init(rock: String = "rock", paper: String = "paper", scissors: String = "scissors") {
        self.rock = rock
        self.paper = paper
        self.scissors = scissors
    }
}
