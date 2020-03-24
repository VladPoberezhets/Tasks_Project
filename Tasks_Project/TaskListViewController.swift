//
//  TaskListViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 27.02.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class TaskListViewController: UITableViewController {
    
    /// enum tasks for table view
    let enumeration_task = Enumeration_Task.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return enumeration_task.allCases.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = enumeration_task.allCases[indexPath.row].rawValue
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if enumeration_task.allCases[indexPath.row] == enumeration_task.task_flickr{
            /// main stroyboard
            let storyboard = UIStoryboard(name: "Main",bundle: nil)
            /// PhotosSearchViewController
            let photosSearchVc = storyboard.instantiateViewController(identifier: "PhotosSearchViewController")
            self.present(photosSearchVc, animated: true, completion: nil)
        }else if enumeration_task.allCases[indexPath.row] == enumeration_task.drawing{
            /// main stroyboard
            let storyboard = UIStoryboard(name: "Main",bundle: nil)
            ///DrawingViewController
            let DrawingVc = storyboard.instantiateViewController(identifier: "DrawingViewController")
            self.present(DrawingVc, animated: true, completion: nil)
        }else if enumeration_task.allCases[indexPath.row] == enumeration_task.Json{
            /// main stroyboard
            let storyboard = UIStoryboard(name: "Main",bundle: nil)
            ///DrawingViewController
            let JsonDecodeVc = storyboard.instantiateViewController(identifier: "JsonDecodeTableViewController")
            self.present(JsonDecodeVc, animated: true, completion: nil)
        }
    }
    
    
}
