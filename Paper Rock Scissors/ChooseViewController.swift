//
//  ViewController.swift
//  Paper Rock Scissors
//
//  Created by Ryan Smith on 9/21/16.
//  Copyright © 2016 Ryan Smith. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultsViewController
        if segue.identifier == "rock" {
            controller.choice = "Rock"
        } else if segue.identifier == "paper" {
            controller.choice = "Paper"
        } else if segue.identifier == "scissors" {
            controller.choice = "Scissors"
        }
    }
    
 
    


}



