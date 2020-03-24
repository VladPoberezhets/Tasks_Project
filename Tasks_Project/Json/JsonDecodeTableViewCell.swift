
//
//  JsonDecodeTableViewCell.swift
//  Tasks_Project
//
//  Created by Vlad on 24.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class JsonDecodeTableViewCell: UITableViewCell {
    
    ///name version
    @IBOutlet weak var name: UILabel!
    /// android min supported version
    @IBOutlet weak var android_min_supported_version: UILabel!
    ///android app version
    @IBOutlet weak var android_app_version: UILabel!
    /// ios min supported version
    @IBOutlet weak var ios_min_supported_version: UILabel!
    /// ios app version
    @IBOutlet weak var ios_app_version: UILabel!
    
}
