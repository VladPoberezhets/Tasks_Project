//
//  EditPhotoViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 06.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class EditPhotoViewController: UIViewController {
    
    /// photo which editing
    @IBOutlet weak var image: UIImageView!
    /// slider for edit size photo
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1.5
        slider.minimumValue = 0.1
        slider.maximumValue = 1.5
        
    }
    
    @IBAction func EditSizeImage(_ sender: Any) {
        /// value from slider
        let scale = slider.value
        ///transformation matrix for use in drawing 2D graphics.
        let transform = CGAffineTransform.init(scaleX: CGFloat(scale), y: CGFloat(scale))
        image.transform = transform
    }
    
}
