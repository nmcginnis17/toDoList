//
//  ToDoList.swift
//  toDoList
//
//  Created by Nicholas McGinnis on 5/17/17.
//  Copyright © 2017 Sinnig Media. All rights reserved.
//

import UIKit

class ToDoList: NSObject {
    fileprivate var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
}


extension ToDoList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel!.text = item
        
        return cell
    }
}

