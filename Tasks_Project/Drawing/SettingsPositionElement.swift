//
//  SettingsPositionElement.swift
//  Tasks_Project
//
//  Created by Vlad on 16.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import Foundation
import UIKit

class SettingsPositionElement{
    
    ///bounding rectangle of the screen, measured in points
    let screenSize = UIScreen.main.bounds
    
    /// height green block area
    var heightGreenBlock:CGFloat
    /// count green block area
    var countGreenBlock = 6
    /// the width of a rectangle.
    var widthScreen = UIScreen.main.bounds.width
    ///the height of a rectangle.
    var heightScreen = UIScreen.main.bounds.height
    
    
    /// count green block area for position calculation PathField3
    let countGreenBlockForPathField3 = 2
    /// count green block area for position calculation PathField4
    let countGreenBlockForPathField4 = 3
    /// count green block area for position calculation PathField5
    let countGreenBlockForPathField5 = 4
    /// count green block area for position calculation PathField6
    let countGreenBlockForPathField6 = 5
    
    /// spacing for calculate position PathField2
    let countSpacingForpathField2 = 3
    /// spacing for calculate position PathField3
    let countSpacingForpathField3 = 6
    /// spacing for calculate position PathField4
    let countSpacingForpathField4 = 9
    /// spacing for calculate position PathField5
    let countSpacingForpathField5 = 12
    /// spacing for calculate position PathField6
    let countSpacingForpathField6 = 15
    
    ///pathField1 y position
    var pathField1Y = 0
    ///pathField2 y position
    var pathField2Y:CGFloat
    ///pathField3 y position
    var pathField3Y:CGFloat
    ///pathField4 y position
    var pathField4Y:CGFloat
    ///pathField5 y position
    var pathField5Y:CGFloat
    ///pathField6 y position
    var pathField6Y:CGFloat
    
    /// count green block area for position calculation PathLine2
    let countGreenBlockForPathLine2Y = 2
    /// count green block area for position calculation PathLine3
    let countGreenBlockForPathLine3Y = 3
    /// count green block area for position calculation PathLine4
    let countGreenBlockForPathLine4Y = 4
    /// count green block area for position calculation PathLine5
    let countGreenBlockForPathLine5Y = 5
    
    /// spacing for calculate position pathLine2
    let countSpacingForpathLine2Y = 3
    /// spacing for calculate position pathLine3
    let countSpacingForpathLine3Y = 6
    /// spacing for calculate position pathLine4
    let countSpacingForpathLine4Y = 9
    /// spacing for calculate position pathLine5
    let countSpacingForpathLine5Y = 12
    
    ///pathLine1Y y position
    var pathLine1Y:CGFloat
    ///pathLine2Y y position
    var pathLine2Y:CGFloat
    ///pathLine3Y y position
    var pathLine3Y:CGFloat
    ///pathLine4Y y position
    var pathLine4Y:CGFloat
    ///pathLine5Y y position
    var pathLine5Y:CGFloat
    
    
    let coefForWidthLine = 20
    /// height pathLine
    let heightLine = 3
    
    /// width line
    var widthLine:CGFloat
    /// pathLine x  postion
    let positionXLine = 10
    
    
    ///Dilation factor for position x for Circular
    let coefForPathCircularX = 2
    ///Dilation factor for position y for Circular
    let coefForPathCircularY = 3
    ///pathCircularX x position
    var pathCircularX:CGFloat
    ///pathCircularY y position
    var pathCircularY:CGFloat
    
    ///Dilation factor for position x for small Circular
    let coefForPathSmallCircularX = 2
    ///Dilation factor for position y for small Circular
    let coefForPathSmallCircularY = 2
    ///pathSmallCircularX x position
    var pathSmallCircularX:CGFloat
    ///pathSmallCircularY y position
    var pathSmallCircularY:CGFloat
    
    ///Dilation factor for position x for pathGoal Left Barbel Top
    let coefForpathGoalLeftBarbelTopX = 2
    ///Dilation factor for position x for pathGoal Right Barbel Top
    let coefForpathGoalRightBarbelTopX = 2
    /// count spacing top left barbel for position x calculation
    let countSpacingForpathGoalLeftBarbelTopX = 50
    /// count spacing top right barbel for position x calculation
    let countSpacingForpathGoalRightBarbelTopX = 50
    
    ///pathGoalLeftBarbelTopX x position
    var pathGoalLeftBarbelTopX:CGFloat
    ///pathGoalRightBarbelTopX x position
    var pathGoalRightBarbelTopX:CGFloat
    
    /// width PathGoal Left - Right Barbel in Top
    var widthPathGoalLeftRightBarbelTop = 3
    /// height PathGoal Left - Right Barbel in Top
    var heightPathGoalLeftRightBarbelTop = 50
    /// crossbar top postion y
    var pathGoalСrossBarBarbelTopY = 50
    /// crossbar top width
    var pathGoalСrossBarBarbelTopWidth = 103
    ///cross bar top height
    var pathGoalСrossBarBarbelTopHeight = 3
    /// path Goal Left-Right Barbel  postion y
    var pathGoalLeftRightBarbelY = 40
    
    ///the number of green blocks to calculate the y position for the lower left bar
    let countGreenBlockForpathGoalLeftBarbelBottomY = 7
    ///Dilation factor for position y for path Goal Left Barbel Bottom
    let coefForpathGoalLeftBarbelBottomY = 6
    ///the spacing for calculate the y position for the lower left bar
    let countSpacingForpathGoalLeftBarbelBottomY = 35
    ///position y for Goal Left Barbel Bottom
    var pathGoalLeftBarbelBottomY:CGFloat
    
    ///the spacing y position for the Goal bottom
    let countSpacingForpathGoalBottomY = 70
    ///position y for Goal  Bottom
    var pathGoalBottomY:CGFloat
    
    ///the number of green blocks to calculate the y position for the circle
    let countGrrenBlockForcircleY = 2
    ///the spacing y position for the circle
    let countSpacingForcircleY = 7
    /// position y circle
    var circleY:CGFloat
    
    /// postion x  right line field
    var lineFiledRigntX = 10
    /// position y for right-left line field top
    var lineFiledRigntLeftTopY = 40
    
    /// spacing for line Filed Rignt-Left Height
    let countSpacingForlineFiledRigntLeftHeight = 60
    /// height line right-left
    var lineFiledRigntLeftHeight:CGFloat
    
    /// spacing for position y line field
    let countSpacingForlineFiledY = 20
    /// line field postion y
    var lineFiledY:CGFloat
    
    /// spacing for position x line field left
    let countSpacingForlineFiledLeftX = 13
    /// line field left postion x
    var lineFiledLeftX:CGFloat
    
    
    let countSpacingForLineFiledTopWidthAndBottom = 20
    /// width line field top-bottom
    var LineFiledTopWidthAndBottom:CGFloat
    
    init(){
        heightGreenBlock = heightScreen/CGFloat(countGreenBlock)
        
        pathField2Y = heightGreenBlock + CGFloat(countSpacingForpathField2)
        pathField3Y = heightGreenBlock * CGFloat(countGreenBlockForPathField3) + CGFloat(countSpacingForpathField3)
        pathField4Y = heightGreenBlock * CGFloat(countGreenBlockForPathField4) + CGFloat(countSpacingForpathField4)
        pathField5Y = heightGreenBlock * CGFloat(countGreenBlockForPathField5) + CGFloat(countSpacingForpathField5)
        pathField6Y = heightGreenBlock * CGFloat(countGreenBlockForPathField6) + CGFloat(countSpacingForpathField6)
        
        
        pathLine1Y = heightGreenBlock 
        pathLine2Y = heightGreenBlock * CGFloat(countGreenBlockForPathLine2Y) + CGFloat(countSpacingForpathLine2Y)
        pathLine3Y = heightGreenBlock * CGFloat(countGreenBlockForPathLine3Y) + CGFloat(countSpacingForpathLine3Y)
        pathLine4Y = heightGreenBlock * CGFloat(countGreenBlockForPathLine4Y) + CGFloat(countSpacingForpathLine4Y)
        pathLine5Y = heightGreenBlock * CGFloat(countGreenBlockForPathLine5Y) + CGFloat(countSpacingForpathLine5Y)
        
        widthLine = widthScreen - CGFloat(coefForWidthLine)
        
        pathCircularX = widthScreen / CGFloat(coefForPathCircularX)
        pathCircularY = heightScreen / CGFloat(coefForPathCircularY)
        
        pathSmallCircularX = widthScreen / CGFloat(coefForPathSmallCircularX)
        pathSmallCircularY = heightScreen / CGFloat(coefForPathSmallCircularY)
        
        pathGoalLeftBarbelTopX = widthScreen /  CGFloat(coefForpathGoalLeftBarbelTopX) - CGFloat(countSpacingForpathGoalLeftBarbelTopX)
        pathGoalRightBarbelTopX = widthScreen / CGFloat(coefForpathGoalRightBarbelTopX) + CGFloat(countSpacingForpathGoalLeftBarbelTopX)
        
        pathGoalLeftBarbelBottomY = heightScreen / CGFloat(countGreenBlockForpathGoalLeftBarbelBottomY) * CGFloat(coefForpathGoalLeftBarbelBottomY) - CGFloat(countSpacingForpathGoalLeftBarbelBottomY)
        
        pathGoalBottomY = heightScreen - CGFloat(countSpacingForpathGoalBottomY)
        
        circleY = heightScreen / CGFloat(countGrrenBlockForcircleY) + CGFloat(countSpacingForcircleY)
        
        lineFiledRigntLeftHeight = heightScreen - CGFloat(countSpacingForlineFiledRigntLeftHeight)
        
        lineFiledY = heightScreen - CGFloat(countSpacingForlineFiledY)
        
        lineFiledLeftX = widthScreen - CGFloat(countSpacingForlineFiledLeftX)
        
        LineFiledTopWidthAndBottom = widthScreen - CGFloat(countSpacingForLineFiledTopWidthAndBottom)
        
    }
}

