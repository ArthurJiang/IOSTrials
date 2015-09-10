//
//  ViewController.swift
//  AnimationTrial
//
//  Created by ArthurJiang on 9/6/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import UIKit

class TrialRootViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    var tableView: UITableView!
    
    let trialIndex: [Constants.TrialsCategory: Int] = [Constants.TrialsCategory.Animation: 0,
                                                    Constants.TrialsCategory.Layout: 1]
    var animationView: AnimationRootViewController!
    
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
        return Constants.TrialsCategory.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case trialIndex[Constants.TrialsCategory.Animation]!:
            animationView = AnimationRootViewController()
            self.navigationController?.pushViewController(animationView, animated: true)
            break
        default:
            break
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.row {
        case trialIndex[Constants.TrialsCategory.Animation]!:
            cell.textLabel?.text = Constants.TrialsCategory.Animation.str()
            break
        case trialIndex[Constants.TrialsCategory.Layout]!:
            cell.textLabel?.text = Constants.TrialsCategory.Layout.str()
            break
        default:
            break
        }
        return cell
    }
}

