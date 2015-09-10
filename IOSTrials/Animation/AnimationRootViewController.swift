//
//  ViewController.swift
//  AnimationTrial
//
//  Created by ArthurJiang on 9/6/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import UIKit

class AnimationRootViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    var tableView: UITableView!

    var animationIndex: [Constants.AnimationCategory: Int] = [Constants.AnimationCategory.Flip: 0,
                                                                Constants.AnimationCategory.Scale: 1,
                                                                Constants.AnimationCategory.PushUp: 2,
                                                                Constants.AnimationCategory.PushDown: 3]
    
    var pushDownView: PushDownAnimationViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.AnimationCategory.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case animationIndex[Constants.AnimationCategory.PushDown]!:
            pushDownView = PushDownAnimationViewController()
            self.navigationController?.pushViewController(pushDownView, animated: true)
            break
        default:
            break
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.row {
        case animationIndex[Constants.AnimationCategory.Flip]!:
            cell.textLabel?.text = Constants.AnimationCategory.Flip.str()
            break
        case animationIndex[Constants.AnimationCategory.Scale]!:
            cell.textLabel?.text = Constants.AnimationCategory.Scale.str()
            break
        case animationIndex[Constants.AnimationCategory.PushDown]!:
            cell.textLabel?.text = Constants.AnimationCategory.PushDown.str()
            break
        case animationIndex[Constants.AnimationCategory.PushUp]!:
            cell.textLabel?.text = Constants.AnimationCategory.PushUp.str()
            break
        default:
            break
        }
        return cell
    }
}

