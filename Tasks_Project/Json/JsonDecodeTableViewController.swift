//
//  JsonDecodeTableViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 24.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit
import Alamofire

class JsonDecodeTableViewController: UITableViewController {
    ///A view that shows that a task is in progress.
    var activityIndicatorView: UIActivityIndicatorView!
    /// url json decodable
    let urlString = "https://mob-version.azurewebsites.net/api/business"
    /// array decodable data
    var data = [VersionDevice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        tableView.backgroundView = activityIndicatorView
        activityIndicatorView.startAnimating()
        
        DispatchQueue.main.async {
            self.LoadData(urlString: self.urlString)
        }
    }

    /**
    Load data from url and decode Json objects
            
    paramets urlString - url to load data
     
        retrun array decodable objects
     */
    private func LoadData(urlString:String){
        AF.request(urlString,method: .get).validate().responseDecodable(of:DeviseObject.self) { (response) in
            if let data = response.value{
                self.data.append(data.Stage)
                self.data.append(data.Live)
                self.tableView.reloadData()
            }else{
                print("error")
            }
            self.activityIndicatorView.stopAnimating()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        ///cell table view
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! JsonDecodeTableViewCell

        cell.name.text = data[indexPath.row].name
        cell.android_app_version.text = data[indexPath.row].android_app_version
        cell.android_min_supported_version.text = data[indexPath.row].android_min_supported_version
        cell.ios_min_supported_version.text = data[indexPath.row].ios_min_supported_version
        cell.ios_app_version.text = data[indexPath.row].ios_app_version


        return cell
    }
    

}
