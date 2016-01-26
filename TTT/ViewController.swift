//
//  ViewController.swift
//  TTT
//
//  Created by Luke CHEUNG on 11/11/15.
//  Copyright © 2015 Luke Cheung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var square0: UIButton!
    
    @IBOutlet weak var square1: UIButton!
    
    @IBOutlet weak var square2: UIButton!
    
    @IBOutlet weak var square3: UIButton!

    @IBOutlet weak var square4: UIButton!
    
    @IBOutlet weak var square5: UIButton!
    @IBOutlet weak var square6: UIButton!
    
    @IBOutlet weak var square7: UIButton!
    
    @IBOutlet weak var square8: UIButton!
    
    @IBOutlet weak var ResultLabel: UILabel!
    var player1 = true
    var grid = [0,0,0,
                0,0,0,
                0,0,0]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ResultLabel.text = ""
        ResultLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ButtonPressed(sender: UIButton) {
        print(player1)
        if ResultLabel.text == ""{
            if (grid[sender.tag] == 0){
                if(sender.tag == 0) {
                    square0.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 1) {
                    square1.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 2) {
                    square2.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 3) {
                    square3.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 4) {
                    square4.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 5) {
                    square5.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 6) {
                    square6.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 7) {
                    square7.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                } else if(sender.tag == 8) {
                    square8.backgroundColor = player1 ? UIColor.redColor() : UIColor.blueColor()
                }
                if (player1) {
                    grid[sender.tag] = 1
                } else {
                    grid[sender.tag] = 2
                }
                player1 = !player1
                gameIsDone()
            }
        }
    }
    func gameIsDone(){
        //check diagonals
        
        if grid[0] != 0 && grid[0] == grid[4] && grid[8] == grid[0] {
            ResultLabel.text = grid[0] == 1 ? "Red Wins" : "Blue Wins"
            print("you win")
            
        }
        if grid[2] != 0 && grid[2] == grid[4] && grid[6] == grid[2] {
            ResultLabel.text = grid[2] == 1 ? "Red Wins" : "Blue Wins"
           print("you've won")
        }
        //check rows
        if grid[0] != 0 && grid[0] == grid[1] && grid[2] == grid[0] {
            ResultLabel.text = grid[0] == 1 ? "Red Wins" : "Blue Wins"
            print("you've won")
        }
        if grid[3] != 0 && grid[3] == grid[4] && grid[5] == grid[3] {
            ResultLabel.text = grid[3] == 1 ? "Red Wins" : "Blue Wins"
            print("you've won")
        }
        if grid[6] != 0 && grid[6] == grid[7] && grid[8] == grid[6] {
            ResultLabel.text = grid[6] == 1 ? "Red Wins" : "Blue Wins"
 
            print("you've won")
        }
        //check columns
        if grid[0] != 0 && grid[0] == grid[3] && grid[0] == grid[6] {
            ResultLabel.text = grid[0] == 1 ? "Red Wins" : "Blue Wins"
            print("you've won")
        }
        if grid[1] != 0 && grid[1] == grid[4] && grid[1] == grid[7] {
            ResultLabel.text = grid[1] == 1 ? "Red Wins" : "Blue Wins"
            print("you've won")
        }
        if grid[2] != 0 && grid[2] == grid[5] && grid[2] == grid[8] {
            ResultLabel.text = grid[1] == 1 ? "Red Wins" : "Blue Wins"
            print("you've won")
        }
        
        if ResultLabel.text != ""{
            ResultLabel.hidden = false
        }
        
        
        
        
        //check stalemate
    }
 


    @IBAction func ResetButtonPressed(sender: UIButton) {
        player1 = true
        grid = [0,0,0,
            0,0,0,
            0,0,0]
        square0.backgroundColor = UIColor.grayColor()
        square1.backgroundColor = UIColor.grayColor()
        square2.backgroundColor = UIColor.grayColor()
        square3.backgroundColor = UIColor.grayColor()
        square4.backgroundColor = UIColor.grayColor()
        square5.backgroundColor = UIColor.grayColor()
        square6.backgroundColor = UIColor.grayColor()
        square7.backgroundColor = UIColor.grayColor()
        square8.backgroundColor = UIColor.grayColor()
        ResultLabel.text = ""
        ResultLabel.hidden = true
        
    }
}

