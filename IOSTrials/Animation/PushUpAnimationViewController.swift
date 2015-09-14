//
//  PushUpAnimationViewController.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/10/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import UIKit

class PushUpAnimationViewController: UIViewController {
    var mainView: UIView!
    var animationLabel: UILabel!
    var animationBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initView() {
        // Set main view
        self.mainView = UIView(frame: DeviceInfo.screenSize)
        self.mainView.backgroundColor = ColorSpace.PushDownAnimationVC.mainViewBGColor
        self.view.addSubview(mainView)
        
        // Add animation btn
        self.animationBtn = UIButton(frame: Metric.PushDownAnimationVC.animationBtn(self.mainView))
        self.animationBtn.backgroundColor = ColorSpace.PushDownAnimationVC.animationBtnColor
        self.animationBtn.setTitle("Push Down", forState: UIControlState.Normal)
        self.animationBtn.setTitle("Push Down", forState: UIControlState.Highlighted)
        self.animationBtn.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.mainView.addSubview(self.animationBtn)
    }
    
    func btnClick(sender: AnyObject) {
        PushDownAnimation.pushDown(self.animationBtn, time: 1, from: self.animationBtn.frame.origin.y, to: self.mainView.frame.height)
    }

}
