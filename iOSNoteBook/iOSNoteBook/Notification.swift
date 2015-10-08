//
//  Notification.swift
//  iOSNoteBook
//
//  Created by Kan Chen on 10/8/15.
//  Copyright © 2015 Zap. All rights reserved.
//

import Foundation

class Notification:NSObject{
    
    
    func addObservers(){
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "action:", name: "one", object: nil)
    }
    
    @objc private func action(noti: NSNotification) {
        print("one")
    }
}