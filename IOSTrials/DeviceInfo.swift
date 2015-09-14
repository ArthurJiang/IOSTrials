//
//  DeviceInfo.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/10/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import Foundation
import UIKit

class DeviceInfo {
    static let screenSize: CGRect = UIScreen.mainScreen().bounds
    static let deviceScale: CGFloat = UIScreen.mainScreen().scale
    static let deviceRegion: String = NSLocale.currentLocale().objectForKey(NSLocaleCountryCode) as! String
}