//
//  EditPhotoViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 06.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class EditPhotoViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    var url = [URL]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(url)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
