//
//  PushDownAnimation.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/10/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import Foundation
import UIKit

class PushDownAnimation {
    class func pushDown(target: UIView, time: CFTimeInterval, from: CGFloat, to: CGFloat) {
        target.frame = CGRectMake(target.frame.origin.x, to, target.frame.width, target.frame.height)

        let pushDownAnimation: CABasicAnimation = CABasicAnimation(keyPath: "position.y")
        pushDownAnimation.fromValue = from
        pushDownAnimation.toValue = to
        pushDownAnimation.duration = time
        target.layer.addAnimation(pushDownAnimation, forKey: "position.y")
    }
}
