//
//  VersionDevice.swift
//  Tasks_Project
//
//  Created by Vlad on 24.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import Foundation

struct VersionDevice:Decodable{
    
    /// json decodable object parametr name
    let name:String
    /// json decodable object parametr api_url
    let api_url:String
    /// json decodable object parametr maintenance_mode
    let maintenance_mode:Bool
    /// json decodable object parametr android_min_supported_version
    let android_min_supported_version:String
    /// json decodable object parametr android_app_version
    let android_app_version:String
    /// json decodable object parametr ios_min_supported_version
    let ios_min_supported_version:String
    /// json decodable object parametr ios_app_version
    let ios_app_version:String
}

struct DeviseObject:Decodable {
    /// jsen decodable object Stage
    let Stage:VersionDevice
    /// jsen decodable object Live
    let Live:VersionDevice
}
