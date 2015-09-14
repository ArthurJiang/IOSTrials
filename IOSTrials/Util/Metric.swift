//
//  Metric.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/10/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import Foundation
import UIKit

class Metric {
    class PushDownAnimationVC {
        class func animationBtn(parentView: UIView) -> CGRect {
            return CGRectMake(parentView.frame.width / 2 - parentView.frame.width / 6,
                parentView.frame.height / 2 - parentView.frame.height / 40,
                parentView.frame.width / 3,
                parentView.frame.height / 20)
        }
        
        class func animationSlider(parentView: UIView) -> CGRect {
            return CGRectMake(0,
                parentView.frame.height * 18 / 20,
                parentView.frame.width,
                parentView.frame.height / 20)
        }
        
        class func animationLabel(parentView: UIView) -> CGRect {
            return CGRectMake(parentView.frame.width * 4 / 5,
                parentView.frame.height * 16 / 20,
                parentView.frame.width / 5,
                parentView.frame.height / 20)
        }
        
        class func sliderBgView(parentView: UIView) -> CGRect {
            return CGRectMake(0,
                parentView.frame.height * 18 / 20,
                parentView.frame.width,
                parentView.frame.height / 20)
        }
        
        class func bottom(parentView: UIView) -> CGRect {
            return CGRectMake(0,
                parentView.frame.height * 19 / 20,
                parentView.frame.width,
                parentView.frame.height / 20)
        }
    }
}