//
//  ResultsViewController.swift
//  Paper Rock Scissors
//
//  Created by Ryan Smith on 9/22/16.
//  Copyright © 2016 Ryan Smith. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var bothChoices: UILabel!
    @IBOutlet weak var finalResult: UILabel!
    
    
    var choice = "Users Choice"
    var opponent = "Opponents Choice"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageName = ""

        opponent = opponentsMove()
        
        switch (choice, opponent) {
        case ("Rock", "Rock"), ("Paper", "Paper"), ("Scissors", "Scissors") :
            bothChoices.text = "(\(choice) vs \(opponent))"
            finalResult.text = "Tie!"
            imageName = "tie"
        case ("Rock", "Scissors"), ("Scissors", "Paper"), ("Paper", "Rock"):
            bothChoices.text = "(\(choice) vs \(opponent))"
            finalResult.text = "You Win!"
            imageName = "\(choice)Beats\(opponent)"
        case ("Scissors", "Rock"), ("Paper", "Scissors"), ("Rock", "Paper"):
            bothChoices.text = "(\(choice) vs \(opponent))"
            finalResult.text = "You Lose!"
            imageName = "\(opponent)Beats\(choice)"
        default:
            print("Error")
        }
        
        resultsImage.image = UIImage (named: imageName)
    }

    func opponentsMove() -> String {
        let randomMove = arc4random_uniform(3)
        
        if randomMove == 0 {
            opponent = "Rock"
            return(opponent)
        } else if randomMove == 1 {
            opponent = "Paper"
            return(opponent)
        } else if randomMove == 2 {
            opponent = "Scissors"
            return(opponent)
        } else {
            return("Invalid Opponents Choice")
        }
    }
    
    
    @IBAction func playAgain(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    



}
