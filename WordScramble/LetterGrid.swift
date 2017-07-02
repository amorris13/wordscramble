//
//  LetterGrid.swift
//  WordScramble
//
//  Created by Anthony Morris on 2/7/17.
//  Copyright © 2017 Anthony Morris. All rights reserved.
//

import UIKit

class LetterGrid: UIStackView {

    //MARK: Properties
    private var letterLabels = [UILabel]()
    var letters = [String]() {
        didSet {
            updateLetters()
        }
    }
    
    let gridSize = 4
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 8.0
        
        for label in letterLabels {
            removeArrangedSubview(label)
            label.removeFromSuperview()
        }
        letterLabels.removeAll()
        
        for _ in 0..<gridSize {
            let row = UIStackView()
            row.axis = .horizontal
            row.distribution = .fillEqually
            row.spacing = 8.0
            addArrangedSubview(row)
            
            for _ in 0..<gridSize {
                let label = UILabel()
                label.text = "A"
                label.font = label.font.withSize(36.0)
                label.textAlignment = .center
                label.layer.borderWidth = 2.0
                label.layer.cornerRadius = 8
                label.layer.masksToBounds = true
                row.addArrangedSubview(label);
                letterLabels.append(label)
            }
        }
        
        updateLetters()
    }
    
    private func updateLetters() {
        for index in 0..<gridSize*gridSize {
            if (index >= letters.count) {
                break
            }
            letterLabels[index].text = letters[index]
        }
    }

}
