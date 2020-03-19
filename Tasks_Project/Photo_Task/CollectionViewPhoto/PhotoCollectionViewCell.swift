//
//  PhotoCollectionViewCell.swift
//  Tasks_Project
//
//  Created by Vlad on 01.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    /// This is UIImageView for  **load images** .
    @IBOutlet weak var images: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.images.image = nil
    }
    
}

