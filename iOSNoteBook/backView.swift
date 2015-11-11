//
//  backView.swift
//  iOSNoteBook
//
//  Created by Kan Chen on 11/5/15.
//  Copyright © 2015 Zap. All rights reserved.
//

import UIKit

class backView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        if !self.userInteractionEnabled || self.hidden{
            return nil
        }
        
        if self.pointInside(point, withEvent: event) {
            for subview in subviews{
                let convertPoint = subview.convertPoint(point, fromView: self)
                let hitTestView = subview.hitTest(convertPoint, withEvent: event)
                if let _ = hitTestView{
                    print(convertPoint)
                }
            }
        }
        return nil
    }
    
    deinit{
        
    }
}
