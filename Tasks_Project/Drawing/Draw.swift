//
//  Draw.swift
//  Tasks_Project
//
//  Created by Vlad on 13.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import UIKit

class Draw: UIView {
    
    ///object settings postion element in  footboll area
    let settingsPositionElement = SettingsPositionElement()
    
    override func draw(_ rect: CGRect) {
        
        ///pathField1 structure that  contains the location and dimensions of a rectangle.
        let pathField1 = CGRect(x: 0, y: settingsPositionElement.pathField1Y, width: Int(settingsPositionElement.widthScreen), height: Int(settingsPositionElement.heightGreenBlock))
        ///pathLine1 structure that contains the location and dimensions of a rectangle.
        let pathLine1 = CGRect(x: settingsPositionElement.positionXLine, y: Int(settingsPositionElement.pathLine1Y), width: Int(settingsPositionElement.widthLine), height: settingsPositionElement.heightLine)
        
        ///pathField2 structure that contains the location and dimensions of a rectangle.
        let pathField2 = CGRect(x: 0, y: Int(settingsPositionElement.pathField2Y), width: Int(rect.width), height: Int(settingsPositionElement.heightGreenBlock))
        
        ///pathLine2 structure that contains the location and dimensions of a rectangle.
        let pathLine2 = CGRect(x: settingsPositionElement.positionXLine, y: Int(settingsPositionElement.pathLine2Y), width: Int(settingsPositionElement.widthLine), height: settingsPositionElement.heightLine)
        
        ///pathField3 structure that contains the location and dimensions of a rectangle.
        let pathField3 = CGRect(x: 0, y: Int(settingsPositionElement.pathField3Y), width: Int(rect.width), height: Int(settingsPositionElement.heightGreenBlock))
        
        ///pathLine3 structure that contains the location and dimensions of a rectangle.
        let pathLine3 = CGRect(x: settingsPositionElement.positionXLine, y: Int(settingsPositionElement.pathLine3Y), width: Int(settingsPositionElement.widthLine), height: settingsPositionElement.heightLine)
        ///pathField4 structure that contains the location and dimensions of a rectangle.
        let pathField4 = CGRect(x: 0, y: Int(settingsPositionElement.pathField4Y), width: Int(rect.width), height: Int(settingsPositionElement.heightGreenBlock))
        
        ///pathLine4 structure that contains the location and dimensions of a rectangle.
        let pathLine4 = CGRect(x: settingsPositionElement.positionXLine, y: Int(settingsPositionElement.pathLine4Y), width: Int(settingsPositionElement.widthLine), height: settingsPositionElement.heightLine)
        ///pathField5 structure that contains the location and dimensions of a rectangle.
        let pathField5 = CGRect(x: 0, y: Int(settingsPositionElement.pathField5Y), width: Int(rect.width), height: Int(settingsPositionElement.heightGreenBlock))
        
        ///pathLine5 structure that contains the location and dimensions of a rectangle.
        let pathLine5 = CGRect(x: settingsPositionElement.positionXLine, y: Int(settingsPositionElement.pathLine5Y), width: Int(settingsPositionElement.widthLine), height: settingsPositionElement.heightLine)
        
        ///pathField6 structure that contains the location and dimensions of a rectangle.
        let pathField6 = CGRect(x: 0, y: Int(settingsPositionElement.pathField6Y), width: Int(rect.width), height: Int(settingsPositionElement.heightGreenBlock))
        
        ///pathCircular structure that contains the location and dimensions of a rectangle.
        let pathCircular = CGRect(x: Int(settingsPositionElement.pathCircularX), y: Int(settingsPositionElement.pathCircularY), width: Int(rect.width/2), height: Int(settingsPositionElement.heightGreenBlock))
        ///pathSmallCircular structure that contains the location and dimensions of a rectangle.
        let pathSmallCircular = CGRect(x: Int(settingsPositionElement.pathSmallCircularX), y: Int(settingsPositionElement.pathSmallCircularY), width: 2, height: 2)
        
        ///pathGoalLeftBarbelTop structure that contains the location and dimensions of a rectangle.
        let pathGoalLeftBarbelTop = CGRect(x: Int(settingsPositionElement.pathGoalLeftBarbelTopX), y: settingsPositionElement.pathGoalLeftRightBarbelY, width: Int(settingsPositionElement.widthPathGoalLeftRightBarbelTop), height: Int(settingsPositionElement.heightPathGoalLeftRightBarbelTop))
        ///pathGoalRightBarbelTop structure that contains the location and dimensions of a rectangle.
        let pathGoalRightBarbelTop = CGRect(x: Int(settingsPositionElement.pathGoalRightBarbelTopX), y: settingsPositionElement.pathGoalLeftRightBarbelY, width: Int(settingsPositionElement.widthPathGoalLeftRightBarbelTop), height: Int(settingsPositionElement.heightPathGoalLeftRightBarbelTop))
        ///pathGoalСrossBarBarbelTop structure that contains the location and dimensions of a rectangle.
        let pathGoalСrossBarBarbelTop = CGRect(x: Int(settingsPositionElement.pathGoalLeftBarbelTopX), y: settingsPositionElement.pathGoalСrossBarBarbelTopY+settingsPositionElement.pathGoalLeftRightBarbelY, width: settingsPositionElement.pathGoalСrossBarBarbelTopWidth, height: settingsPositionElement.pathGoalСrossBarBarbelTopHeight)
        
        ///pathGoalLeftBarbelBottom structure that contains the location and dimensions of a rectangle.
        let pathGoalLeftBarbelBottom = CGRect(x: Int(settingsPositionElement.pathGoalLeftBarbelTopX), y: Int(settingsPositionElement.pathGoalBottomY), width: settingsPositionElement.widthPathGoalLeftRightBarbelTop, height: settingsPositionElement.heightPathGoalLeftRightBarbelTop)
        ///pathGoalRightBarbelBottom structure that contains the location and dimensions of a rectangle.
        let pathGoalRightBarbelBottom = CGRect(x: Int(settingsPositionElement.pathGoalRightBarbelTopX), y: Int(settingsPositionElement.pathGoalBottomY), width: settingsPositionElement.widthPathGoalLeftRightBarbelTop, height: settingsPositionElement.heightPathGoalLeftRightBarbelTop)
        ///pathGoalСrossBarBarbelBottom structure that contains the location and dimensions of a rectangle.
        let pathGoalСrossBarBarbelBottom = CGRect(x: Int(settingsPositionElement.pathGoalLeftBarbelTopX), y: Int(settingsPositionElement.pathGoalBottomY), width: settingsPositionElement.pathGoalСrossBarBarbelTopWidth, height: settingsPositionElement.pathGoalСrossBarBarbelTopHeight)
        
        ///lineFiledRignt structure that contains the location and dimensions of a rectangle.
        let lineFiledRignt = CGRect(x: settingsPositionElement.lineFiledRigntX, y: settingsPositionElement.lineFiledRigntLeftTopY, width: 3, height: Int(settingsPositionElement.lineFiledRigntLeftHeight))
        ///lineFiledLeft structure that contains the location and dimensions of a rectangle.
        let lineFiledLeft = CGRect(x: Int(settingsPositionElement.lineFiledLeftX), y: settingsPositionElement.lineFiledRigntLeftTopY, width: 3, height: Int(settingsPositionElement.lineFiledRigntLeftHeight))
        ///lineFiledTop structure that contains the location and dimensions of a rectangle.
        let lineFiledTop = CGRect(x: Int(settingsPositionElement.lineFiledRigntX), y: settingsPositionElement.lineFiledRigntLeftTopY, width: Int(settingsPositionElement.LineFiledTopWidthAndBottom), height: 3)
        ///lineFiledBottom structure that contains the location and dimensions of a rectangle.
        let lineFiledBottom = CGRect(x: Int(settingsPositionElement.lineFiledRigntX), y: Int(settingsPositionElement.lineFiledY), width: Int(settingsPositionElement.LineFiledTopWidthAndBottom), height: 3)
        
        drawFieldColorGreenLightly(in: pathField1)
        drawLine(in:pathLine1)
        drawFieldColorGreenDarker(in: pathField2)
        drawLine(in:pathLine2)
        drawFieldColorGreenLightly(in: pathField3)
        drawLine(in:pathLine3)
        drawFieldColorGreenDarker(in: pathField4)
        drawLine(in:pathLine4)
        drawFieldColorGreenLightly(in: pathField5)
        drawLine(in:pathLine5)
        drawFieldColorGreenDarker(in: pathField6)
        
        drawCircular(in: pathCircular)
        drawSmallCircular(in: pathSmallCircular)
        
        drawFieldLine(in: lineFiledRignt)
        drawFieldLine(in: lineFiledLeft)
        drawFieldLine(in: lineFiledTop)
        drawFieldLine(in: lineFiledBottom)
        
        drawGoal(in: pathGoalLeftBarbelTop)
        drawGoal(in: pathGoalRightBarbelTop)
        drawGoal(in: pathGoalСrossBarBarbelTop)
        
        drawGoal(in: pathGoalLeftBarbelBottom)
        drawGoal(in: pathGoalRightBarbelBottom)
        drawGoal(in: pathGoalСrossBarBarbelBottom)
    }
    
    /**
     function that draws a green container
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return: container
     */
    private func drawFieldColorGreenLightly(in rect: CGRect){
        /// object Apath that consists of straight and curved line segments that you can render in your custom views.
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        /// color container
        let color = UIColor.green
        color.setFill()
        path.fill()
    }
    
    /**
     function that draws a Green Darker container
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return: container
     */
    private func drawFieldColorGreenDarker(in rect: CGRect){
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        let color = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        color.setFill()
        path.fill()
    }
    
    /**
     function that draws white line
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return: line
     */
    private func drawLine(in rect: CGRect){
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        let color = UIColor.white
        color.setFill()
        path.fill()
    }
    /**
     function that draws white circular
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return: circular
     */
    private func drawCircular(in rect: CGRect){
        let circle = UIBezierPath(arcCenter: CGPoint(x: settingsPositionElement.pathSmallCircularX, y:settingsPositionElement.circleY), radius: settingsPositionElement.heightGreenBlock/2, startAngle:0, endAngle:  2*CGFloat.pi, clockwise: false)
        let color = UIColor.white
        color.setFill()
        circle.lineWidth = 3
        UIColor.white.setStroke()
        circle.stroke()
    }
    /**
     function that draws white small circular
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return:  small circular
     */
    private func drawSmallCircular(in rect: CGRect){
        let circle = UIBezierPath(arcCenter: CGPoint(x: settingsPositionElement.pathSmallCircularX, y:settingsPositionElement.circleY), radius: 5, startAngle:0, endAngle:  2*CGFloat.pi, clockwise: false)
        let color = UIColor.white
        color.setFill()
        circle.lineWidth = 1
        circle.fill()
        circle.stroke()
    }
    
    /**
     function that draws white Goal
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return:  Goal
     */
    private func drawGoal(in rect: CGRect){
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        let color = UIColor.white
        color.setFill()
        path.fill()
    }
    
    /**
     function that draws white Field Line
     
     input:rect - A structure that contains the location and dimensions of a rectangle.
     return:  Field Line
     */
    private func drawFieldLine(in rect: CGRect){
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        let color = UIColor.white
        color.setFill()
        path.fill()
    }
}

