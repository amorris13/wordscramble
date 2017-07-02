//
//  GridGenerator.swift
//  WordScramble
//
//  Created by Anthony Morris on 2/7/17.
//  Copyright © 2017 Anthony Morris. All rights reserved.
//

import GameplayKit

class GridGenerator {
    
    static let dice: [[String]] = [
        ["R","I","F","O","B","X"],
        ["I","F","E","H","E","Y"],
        ["D","E","N","O","W","S"],
        ["U","T","O","K","N","D"],
        ["H","M","S","R","A","O"],
        ["L","U","P","E","T","S"],
        ["A","C","I","T","O","A"],
        ["Y","L","G","K","U","E"],
        ["Qu","B","M","J","O","A"],
        ["E","H","I","S","P","N"],
        ["V","E","T","I","G","N"],
        ["B","A","L","I","Y","T"],
        ["E","Z","A","V","N","D"],
        ["R","A","L","E","S","C"],
        ["U","W","I","L","R","G"],
        ["P","A","C","E","M","D"]
    ]
    
    static let gridSize = dice.count
    
    static func generateBoard() -> [String] {
        let random = GKRandomSource.sharedRandom()
        let shuffledDice = random.arrayByShufflingObjects(in: dice) as! [[String]]
        
        var board = [String]()
        for die in shuffledDice {
            board.append(die[random.nextInt(upperBound: 6)])
        }
        return board
    }

}
