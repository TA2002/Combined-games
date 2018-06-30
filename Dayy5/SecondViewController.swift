//
//  SecondViewController.swift
//  Dayy5
//
//  Created by Tarlan Askaruly on 29.06.2018.
//  Copyright © 2018 Tarlan Askaruly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var colors = ["Red", "Green", "Yellow", "Blue"]
    @IBOutlet weak var changeColor: UILabel!
    var randColor:Int = 0;
    var randColor2:Int = 0;
    var Points:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func newGame(){
        Points = 7;
        ShowScoreLabel.text = "Your score: \(Points)"
        change()
    }
    func change(){
        if(Points == 0){
            let alert = UIAlertView()
            alert.title = "Game Over"
            alert.message = "Your total points: 0"
            alert.addButton(withTitle:"Restart")
            alert.show()
            newGame()
        }
        else{
        randColor = Int(arc4random_uniform(4))
        randColor2 = Int(arc4random_uniform(4))
        switch randColor{
        case 0: changeColor.backgroundColor = UIColor.red
        case 1: changeColor.backgroundColor = UIColor.green
        case 2: changeColor.backgroundColor = UIColor.yellow
        case 3: changeColor.backgroundColor = UIColor.blue
        default: changeColor.backgroundColor = UIColor.blue
        }
        changeColor.text = "\(colors[randColor2])"
        }
    }
    @IBOutlet weak var ShowScoreLabel: UILabel!
    @IBAction func TrueButtonClicked(_ sender: UIButton) {
        if(randColor2 == randColor){
            Points = Points + 1;
        }
        else{
            Points = Points - 1;
        }
        ShowScoreLabel.text = "\(Points)"
        change()
    }
    @IBAction func FalseButtonClicked(_ sender: UIButton) {
        if(randColor2 == randColor){
            Points = Points - 1;
        }
        else{
            Points = Points + 1;
        }
        ShowScoreLabel.text = "Your score: \(Points)"
        change()
    }
    @IBOutlet weak var True_Button: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

