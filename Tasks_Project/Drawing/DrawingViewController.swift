//
//  DrawingViewController.swift
//  Tasks_Project
//
//  Created by Vlad on 13.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController {
    
    /// view were draw footboll area
    @IBOutlet weak var viewDraw: Draw!
    
    /// image boll
    @IBOutlet weak var imageBoll: UIImageView!
    
    /// object settings postion element in  footboll area
    let settingsPositionElement = SettingsPositionElement()
    
    /// height image boll
    let bollHeight:CGFloat = 35
    /// width image boll
    let bollWidth:CGFloat = 35
    /// number of goals scored by top teams
    var topTeam:Int = 0
    /// number of goals scored by bottom teams
    var bottomTeam:Int = 0
    
    ///right indent value for the ball
    let counSpacingForBoolX = 15
    ///top indent value for the ball
    let counSpacingForBoolY = 10
    
    ///coordinate x boll position
    var bollX:CGFloat = 0.0
    ///coordinate y boll position
    var bollY:CGFloat = 0.0
    
    ///top indent value for goal
    let topGoal = 23
    ///bottom indent value for goal
    let bottomGoal = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bollX = settingsPositionElement.pathSmallCircularX-CGFloat(counSpacingForBoolX)
        bollY = settingsPositionElement.pathSmallCircularY-CGFloat(counSpacingForBoolY) 
        self.viewDraw.addSubview(imageBoll)
        
        imageBoll.frame = CGRect(x: bollX, y: bollY, width: bollWidth, height: bollHeight)
        
        /// A concrete subclass of UIGestureRecognizer that looks for panning (dragging) gestures.
        var panGesture = UIPanGestureRecognizer()
        panGesture = UIPanGestureRecognizer(target: self, action: #selector(draggedView(_:)))
        imageBoll.isUserInteractionEnabled = true
        imageBoll.addGestureRecognizer(panGesture)
    }
    
    /**
     function to control the ball and count the number of goals
     
     return count goal
     */
    @objc func draggedView(_ sender:UIPanGestureRecognizer){
        
        
        self.view.bringSubviewToFront(imageBoll)
        ///The translation of the pan gesture in the coordinate system of the specified view.
        let translation = sender.translation(in: self.viewDraw)
        
        imageBoll.center = CGPoint(x: imageBoll.center.x + translation.x, y: imageBoll.center.y + translation.y)
        
        if imageBoll.center.x  > settingsPositionElement.pathGoalLeftBarbelTopX && imageBoll.center.x <  settingsPositionElement.pathGoalRightBarbelTopX && imageBoll.center.y <  CGFloat(settingsPositionElement.pathGoalСrossBarBarbelTopY+topGoal){
            self.bottomTeam += 1
            
            imageBoll.frame = CGRect(x: settingsPositionElement.pathSmallCircularX-CGFloat(counSpacingForBoolX), y: settingsPositionElement.pathSmallCircularY-CGFloat(counSpacingForBoolY), width: bollWidth, height: bollHeight)
            
            self.presentAlert()
            
        }else if imageBoll.center.x  > settingsPositionElement.pathGoalLeftBarbelTopX && imageBoll.center.x <  settingsPositionElement.pathGoalRightBarbelTopX && imageBoll.center.y >  CGFloat(settingsPositionElement.pathGoalBottomY+CGFloat(bottomGoal)){
            
            self.topTeam += 1
            imageBoll.frame = CGRect(x: settingsPositionElement.pathSmallCircularX-CGFloat(counSpacingForBoolX), y: settingsPositionElement.pathSmallCircularY-CGFloat(counSpacingForBoolY), width: bollWidth, height: bollHeight)
            
            self.presentAlert()
        }
        
        sender.setTranslation(CGPoint.zero, in: self.viewDraw)
    }
    
    
    /**
     function that shows alert with the score
     
     return alert with score
     */
    func presentAlert(){
        ///object that displays an alert message to the user.
        
        let alert = UIAlertController(title: "Goal", message: "\(self.topTeam) - \(self.bottomTeam)", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Continue game", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
