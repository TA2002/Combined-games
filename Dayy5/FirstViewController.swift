//
//  FirstViewController.swift
//  Dayy5
//
//  Created by Tarlan Askaruly on 29.06.2018.
//  Copyright © 2018 Tarlan Askaruly. All rights reserved.
//

import UIKit
import Darwin

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        First.text = tskMgr.name
        Second.text = "Score: \(tskMgr.score)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        First.text = "\(tskMgr.name)"
        Second.text = "Score: \(tskMgr.score)"
    }
    @IBOutlet weak var First: UILabel!
    @IBOutlet weak var Second: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBAction func FirstButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let controller = storyboard.instantiateViewController(withIdentifier: "MyThirdScreen")
        self.navigationController!.pushViewController(controller, animated: false)
        butt.type = 1;
    }
    @IBAction func SecondButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let controller = storyboard.instantiateViewController(withIdentifier: "MyThirdScreen")
        self.navigationController!.pushViewController(controller, animated: false)
        butt.type = 2;
    }
    @IBAction func ThirdButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let controller = storyboard.instantiateViewController(withIdentifier: "MyThirdScreen")
        self.navigationController!.pushViewController(controller, animated: false)
        butt.type = 3;
    }
    @IBAction func unwindToMenu(segue: UIStoryboardSegue) {}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

