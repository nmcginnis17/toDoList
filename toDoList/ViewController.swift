//
//  ViewController.swift
//  toDoList
//
//  Created by Nicholas McGinnis on 5/17/17.
//  Copyright © 2017 Sinnig Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    
    let todolist = ToDoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todolist
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        guard let todo = itemTextField.text else {
            return
        }
        todolist.add(todo)
        tableView.reloadData()
    }
    
}







