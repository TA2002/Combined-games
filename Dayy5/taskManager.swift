//
//  taskManager.swift
//  Dayy5
//
//  Created by Tarlan Askaruly on 29.06.2018.
//  Copyright © 2018 Tarlan Askaruly. All rights reserved.
//

import Foundation
import UIKit

//struct task{
//    var name = "Un-named"
//    var date = "Un-dated"
//    var rubric = "Un-rubriced"
//}

//class TaskManager: NSObject {
    
//    var tasks = [task]()
    
//    func addTask(name: String, date: String, rubric: String){
        //tasks.append(task(name: name, date: date, rubric: rubric))
//    }
    
//}

var butt: RandomGenerator = RandomGenerator()
var tskMgr: TaskManager = TaskManager()

var randomm = 0
var namee = ""
var scoree = 0

class RandomGenerator: NSObject {
    var type = randomm
}
class TaskManager: NSObject {
    var name = namee
    var score = scoree
}
