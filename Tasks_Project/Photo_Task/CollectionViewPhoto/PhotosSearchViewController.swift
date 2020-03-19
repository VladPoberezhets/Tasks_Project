//
//  PhotosSearchViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 27.02.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit
import FlickrKit

class PhotosSearchViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
    
    
    /// The  count section in UICollectionView
    var numberOfItemsInSections = 1
    /// Activity indicator for collection view
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    /// search bar  for search image
    @IBOutlet weak var SearchBar: UISearchBar!
    /// collection view for show image
    @IBOutlet weak var collectionView: UICollectionView!
    /// count row in cellection  cell  image in collection view
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    /// Tap for hide keyboard when user search images
    var tap:UITapGestureRecognizer = UITapGestureRecognizer()
    
    /// Array(url) -  what user search
    var images = [URL]()
    
    ///user write in searchBar
    var searchText = ""
    
    /// spacing for setting segment controll 2 colum
    let settingWithTwoColum = 7
    /// spacing for setting segment controll 3 colum
    let settingWithThreeColum = 25
    /// spacing for setting segment controll 4 colum
    let settingWithFourColum = 5
    /// spacing for setting segment controll 1 colum
    let settingWithOneColum = 70
    
    /// 1 colum in collection view
    let countColumnOne = 1
    /// 2 colum in collection view
    let countColumnTwo = 2
    /// 3 colum in collection view
    let countColumnThree = 3
    /// 4 colum in collection view
    let countColumnFour = 4
    
    // division ratio for obsession 2 colum
    let coefficientDivisionTwoColum:CGFloat = 2
    // division ratio for obsession 3 colum
    let coefficientDivisionThreeColum:CGFloat = 3
    // division ratio for obsession 5 colum
    let coefficientDivisionFourColum:CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadData()
        collectionView.dataSource = self
        collectionView.delegate = self
        SearchBar.delegate = self
        
        tap = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
    }
    
    
    @objc func hideKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    /**
     Function for downloading pictures by category that the user entered in the search
     
     return: array url images
     */
    func LoadData(){
        FlickrKit.shared().initialize(withAPIKey: "a3749a264a9fadf5f2bdfba07cbe06a3", sharedSecret: "fa37b16f09cd6431")
        ///Access the FlickrKit shared singleton
        let fk = FlickrKit.shared()
        let flickrInteresting = FKFlickrPhotosSearch()
        flickrInteresting.text = searchText
        
        fk.call(flickrInteresting) {(response, error) -> Void in
            
            
            DispatchQueue.main.async {
                if (response != nil) {
                    /// array photos url
                    let topPhotos = response!["photos"] as! [String:Any]
                    /// array photo url
                    let photoArray = topPhotos["photo"] as! [[String:Any]]
                    
                    for photoDictionary in photoArray {
                        ///The main point of entry into FlickrKit
                        let photoURL = FlickrKit.shared().photoURL(for: FKPhotoSize.large1024, fromPhotoDictionary: photoDictionary)
                        if self.images.count <= 4{
                            self.images.append(photoURL)
                            
                        }
                    }
                    self.activityIndicator.stopAnimating()
                    self.collectionView.reloadData()
                    
                }
            }
            
        }
        
        
    }
    
    /**
     Сolumn number switching function in collectionView
     
     return: count column
     */
    @IBAction func OneOrTwoPhotos(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex
        {
        case 0:
            self.numberOfItemsInSections = countColumnOne
        case 1:
            self.numberOfItemsInSections = countColumnTwo
        case 2:
            self.numberOfItemsInSections = countColumnThree
        case 3:
            self.numberOfItemsInSections = countColumnFour
        default:
            break
        }
        collectionView.reloadData()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /// сell in collectionView
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCollectionView", for: indexPath) as! PhotoCollectionViewCell
        
        DispatchQueue.main.async {
            if let data = try? Data(contentsOf: self.images[indexPath.row]) {
                cell.images.image = UIImage(data: data)
            }
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        /// size screen width
        let screenSizeWidth = UIScreen.main.bounds.width
        
        
        
        if self.numberOfItemsInSections == countColumnTwo{
            /// calculate size cell in collectionView for 2 column
            let size = CGSize(width: screenSizeWidth/coefficientDivisionTwoColum-CGFloat(settingWithTwoColum), height: screenSizeWidth/coefficientDivisionTwoColum-CGFloat(settingWithTwoColum))
            return size
        }
        
        if self.numberOfItemsInSections == countColumnThree{
            /// calculate size cell in collectionView for 3 column
            let size = CGSize(width: screenSizeWidth/coefficientDivisionThreeColum-CGFloat(settingWithThreeColum), height: screenSizeWidth/coefficientDivisionThreeColum-CGFloat(settingWithThreeColum))
            return size
        }
        if self.numberOfItemsInSections == countColumnFour{
            /// calculate size cell in collectionView for 4 column
            let size = CGSize(width: screenSizeWidth/coefficientDivisionFourColum-CGFloat(settingWithFourColum), height: screenSizeWidth/coefficientDivisionFourColum-CGFloat(settingWithFourColum))
            return size
        }
        
        return  CGSize(width: screenSizeWidth-CGFloat(settingWithOneColum), height: screenSizeWidth-CGFloat(settingWithOneColum))
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /// view controller where edit photo
        let editPhoto = storyboard?.instantiateViewController(identifier: "EditPhotoViewController") as? EditPhotoViewController
        
        DispatchQueue.main.async {
            if let data = try? Data(contentsOf: self.images[indexPath.row]) {
                editPhoto?.image.image = UIImage(data: data)
            }
        }
        
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
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.SearchBar.resignFirstResponder()
    }
    
}

