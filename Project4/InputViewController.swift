//
//  ViewController.swift
//  Project4
//
//  Created by Galina Podstrechnaya on 7/22/18.
//  Copyright © 2018 Galina. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var toDoTextField: UITextField!
    @IBAction func addItem(_ sender: Any) {
         if(toDoTextField.text != "") {
            let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context)
            newTask.taskName = toDoTextField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print(newTask.taskName!)
            toDoTextField.text = ""
            toDoTextField.resignFirstResponder()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

