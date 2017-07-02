//
//  ViewController.swift
//  WordScramble
//
//  Created by Anthony Morris on 24/6/17.
//  Copyright © 2017 Anthony Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var letterGrid: LetterGrid!
    
    //MARK: Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateGrid()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateGrid(_ sender: Any) {
        generateGrid()
    }

    private func generateGrid() {
        letterGrid.letters = GridGenerator.generateBoard()
    }
}

