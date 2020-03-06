//
//  PhotosSearchViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 27.02.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit
import FlickrKit

class PhotosSearchViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  ,UISearchBarDelegate {
    
    var numberOfItemsInSections = 1
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var SearchBar: UISearchBar!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var images = [URL]()
    var searchText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadData()
        collectionView.dataSource = self
        collectionView.delegate = self
        SearchBar.delegate = self
        
        let screenSizeWidth = UIScreen.main.bounds.width
        print(screenSizeWidth-70)
    }
    
    
    func LoadData(){
        FlickrKit.shared().initialize(withAPIKey: "a3749a264a9fadf5f2bdfba07cbe06a3", sharedSecret: "fa37b16f09cd6431")
        let fk = FlickrKit.shared()
        let flickrInteresting = FKFlickrPhotosSearch()
        flickrInteresting.text = searchText
        
        fk.call(flickrInteresting) {(response, error) -> Void in
            
            DispatchQueue.main.async {
                if (response != nil) {
                    let topPhotos = response!["photos"] as! [String:Any]
                    
                    let photoArray = topPhotos["photo"] as! [[String:Any]]
                    
                    for photoDictionary in photoArray {
                        let photoURL = FlickrKit.shared().photoURL(for: FKPhotoSize.large1024, fromPhotoDictionary: photoDictionary)
                        if self.images.count <= 4{
                            self.images.append(photoURL)
                            
                        }
                    }
                    self.collectionView.reloadData()
                }
            }
        }
        
    }
    
    
    @IBAction func OneOrTwoPhotos(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex
        {
        case 0:
            self.numberOfItemsInSections = 1
            collectionView.reloadData()
        case 1:
            self.numberOfItemsInSections = 2
            collectionView.reloadData()
        case 2:
            self.numberOfItemsInSections = 3
            collectionView.reloadData()
        case 3:
            self.numberOfItemsInSections = 4
            collectionView.reloadData()
        default:
            break
        }
        
    }
    
    
    @IBAction func tapHideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCollectionView", for: indexPath) as! PhotoCollectionViewCell
        
        DispatchQueue.main.async {
            let data = try? Data(contentsOf: self.images[indexPath.row])
            cell.images.image = UIImage(data: data!)
            self.activityIndicator.stopAnimating()
       
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSizeWidth = UIScreen.main.bounds.width
        
        let settingWithTwoColum = 7
        let settingWithThreeColum = 25
        let settingWithFourColum = 5
        let settingWithOneColum = 70
        
        if self.numberOfItemsInSections == 2{
            let size = CGSize(width: screenSizeWidth/2-CGFloat(settingWithTwoColum), height: screenSizeWidth/2-CGFloat(settingWithTwoColum))
            return size
        }
        
        if self.numberOfItemsInSections == 3{
            let size = CGSize(width: screenSizeWidth/3-CGFloat(settingWithThreeColum), height: screenSizeWidth/3-CGFloat(settingWithThreeColum))
            return size
        }
        if self.numberOfItemsInSections == 4{
            let size = CGSize(width: screenSizeWidth/5-CGFloat(settingWithFourColum), height: screenSizeWidth/5-CGFloat(settingWithFourColum))
            return size
        }
        
        return  CGSize(width: screenSizeWidth-CGFloat(settingWithOneColum), height: screenSizeWidth-CGFloat(settingWithOneColum))
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCollectionView", for: indexPath) as! PhotoCollectionViewCell
        let editPhoto = storyboard?.instantiateViewController(identifier: "EditPhotoViewController") as? EditPhotoViewController
        editPhoto?.image = cell.images
        
        self.present(editPhoto!, animated: true, completion: nil)
        
    }

    
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar){
        if searchBar.text!.isEmpty{
            self.images.removeAll()
            self.collectionView.reloadData()
        }else{
            self.searchText = searchBar.text!
            LoadData()
            self.activityIndicator.startAnimating()
        }
        
    }
    
    
}

