//
//  ViewController.swift
//  Rock paper scissors
//
//  Created by Braeden Cullen on 8/24/19.
//  Copyright © 2019 Braeden Cullen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    //1 = rock 2 = paper 3 = scissors
let banana = 1
let botpred = [1, 2, 3]
var humanpred = 0
var wins = 0

    

@IBOutlet weak var Score: UILabel!
    
@IBAction func rock(_ sender: Any) {
    var pred = arc4random_uniform(3) + 1
    humanpred = 1
    if pred > 0 {
        self.view.backgroundColor = .black
    }
    self.view.backgroundColor = .gray
    if pred == 1 && humanpred == 1  {
        self.view.backgroundColor = .purple
        
    }
    if pred == 2 && humanpred == 1 {
        self.view.backgroundColor = .red
        wins = wins - 1
        var win = String(wins);
        Score.text = win
        
    }
    if pred == 3 && humanpred == 1 {
        self.view.backgroundColor = .green
        wins = wins + 1
        var win = String(wins);
        Score.text = win
        
    }
}

    
@IBAction func paper(_ sender: Any) {
    var pred = arc4random_uniform(3) + 1
    humanpred = 2
    self.view.backgroundColor = .white
    if pred == 1 && humanpred == 2 {
        self.view.backgroundColor = .green
        wins = wins + 1
        var win = String(wins);
        Score.text = win
    }
    if pred == 3 && humanpred == 2 {
        self.view.backgroundColor = .red
        wins = wins - 1
        var win = String(wins);
        Score.text = win
        
    }
    if pred == 2 && humanpred == 2 {
        self.view.backgroundColor = .purple
        
    }
}

@IBAction func scissors(_ sender: Any) {
    var pred = arc4random_uniform(3) + 1
    humanpred = 3
    self.view.backgroundColor = .black
    if pred == 2 && humanpred == 3 {
        self.view.backgroundColor = .green
        wins = wins + 1
        var win = String(wins);
        Score.text = win
        
    }
    if pred == 1 && humanpred == 3 {
        self.view.backgroundColor = .red
        wins = wins - 1
        var win = String(wins);
        Score.text = win
        
    }
    if pred == 3 && humanpred == 3 {
        self.view.backgroundColor = .purple
       
    }
    
    
}
    
    
    
    
    
    
    
    

    
    /*while banana < 2 {
    
        if pred == 1 && humanpred == 1  {
            self.view.backgroundColor = .purple
        }
    
        if pred == 1 && humanpred == 2 {
            self.view.backgroundColor = .green
        }
        if pred == 2 && humanpred == 1 {
            self.view.backgroundColor = .red
        }
        if pred == 2 && humanpred == 3 {
            self.view.backgroundColor = .green
        }
        if pred == 3 && humanpred == 2 {
            self.view.backgroundColor = .red
        }
        if pred == 3 && humanpred == 1 {
            self.view.backgroundColor = .green
        }
        if pred == 1 && humanpred == 3 {
            self.view.backgroundColor = .red
        }
    }*/


}


