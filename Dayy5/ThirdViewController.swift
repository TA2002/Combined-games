//
//  ThirdViewController.swift
//  Dayy5
//
//  Created by Tarlan Askaruly on 29.06.2018.
//  Copyright © 2018 Tarlan Askaruly. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    var countdownTimer = Timer()
    var time = 0
    var points = 0
    var x: Int = 0
    var sum: Double = 0.0
    var yy: Int = 0
    var timer2 = Timer()
    var timer1 = Timer()
    func start(){
        timer2 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(moveQuestionLabel), userInfo: nil, repeats: true)
    }
    @IBOutlet weak var bottomView: UILabel!
    @objc func moveQuestionLabel() {
        if(sum >= 20){
            timer2.invalidate()
            timer1.invalidate()
            result()
        }
        else{
            sum += 0.2
            timerLabel.text = "Time left:\(20 - Int(sum))"
            if questionLabel.center.y >= (bottomView.center.y - 45) {
                newQuestion()
            }
            UIView.animate(withDuration: 0.2) {
                self.questionLabel.center.y += CGFloat(5)
            }
        }
    }
    func result(){
        let alert = UIAlertController(title: "Your score is \(points)", message: "Enter a name", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = ""
        }
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
           // print("Text field: \(textField?.text)")
            
            tskMgr.name = (textField?.text)!
            tskMgr.score = self.points
            self.dis()
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    func dis(){
        self.navigationController?.popViewController(animated: true)
        //self.performSegue(withIdentifier: "MyFirstScreen", sender: self)
        //self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    //Generate new random question
    func newQuestion() {
        if butt.type == 1 {
            x = Int(arc4random_uniform(9) + 1)
        }
        if butt.type == 2 {
            x = Int(arc4random_uniform(99) + 1)
            if(x < 10){
                x = x + 10
            }
        }
        if butt.type == 3 {
            x = Int(arc4random_uniform(999) + 1)
            if(x < 100){
                x = x + 100;
            }
        }
        
        yy = Int(arc4random_uniform(9) + 1)
        questionLabel.text = "\(x) x \(yy) ="
        questionLabel.center.y = 0
    }
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        newQuestion()
        start()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func Submit(_ sender: UIButton) {
        let text = Int(myTextField.text!)
        if(x * yy == text){
            points = points + 1
            scoreLabel.text = "Your score:\(String(points))"
        }
        newQuestion()
        myTextField.text = ""
    }
    override func viewDidDisappear(_ animated: Bool) {
        timer2.invalidate()
        timer1.invalidate()
    }
    @IBOutlet weak var Submit: UIButton!
    
}
