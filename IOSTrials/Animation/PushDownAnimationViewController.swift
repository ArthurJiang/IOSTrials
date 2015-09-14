//
//  PushDownAnimationViewController.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/10/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import UIKit

class PushDownAnimationViewController: UIViewController {
    var mainView: UIView!
    var animationLabel: UILabel!
    var animationBtn: UIButton!
    var animationSlider: UISlider!
    var sliderBgView: UIView!
    var bottomView: UIView!
    var timePicker: UIPickerView!
    
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
        
        // Add slider bg
        self.sliderBgView = UIView(frame: Metric.PushDownAnimationVC.sliderBgView(self.mainView))
        self.sliderBgView.backgroundColor = ColorSpace.PushDownAnimationVC.sliderBgColor
        self.mainView.addSubview(self.sliderBgView)
        
        
        // Add animation slider
        self.animationSlider = UISlider(frame: Metric.PushDownAnimationVC.animationSlider(self.mainView))
        self.mainView.addSubview(self.animationSlider)
        
        // Add animationlabel
        self.animationLabel = UILabel(frame: Metric.PushDownAnimationVC.animationLabel(self.mainView))
        self.animationLabel.backgroundColor = ColorSpace.PushDownAnimationVC.animationLabelColor
        self.mainView.addSubview(self.animationLabel)
        
        // Add bottom
        self.bottomView = UIView(frame: Metric.PushDownAnimationVC.bottom(self.mainView))
        self.bottomView.backgroundColor = ColorSpace.PushDownAnimationVC.bottomColor
        self.mainView.addSubview(self.bottomView)
    }
    
    func btnClick(sender: AnyObject) {
//        PushDownAnimation.pushDown(self.animationBtn, time: 1, from: self.animationBtn.frame.origin.y, to: self.mainView.frame.height)
        PushDownAnimation.pushDown(self.animationSlider, time: 1, from: Metric.PushDownAnimationVC.animationSlider(self.mainView).origin.y, to: Metric.PushDownAnimationVC.bottom(self.mainView).origin.y)
        PushDownAnimation.pushDown(self.animationLabel, time: 2, from: Metric.PushDownAnimationVC.animationLabel(self.mainView).origin.y, to: Metric.PushDownAnimationVC.bottom(self.mainView).origin.y)
    }
}
