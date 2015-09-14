//
//  Constants.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/6/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import Foundation
import UIKit

class Constants {
    enum TrialsCategory {
        case Animation, Layout, Unknown /*Keep last*/
        func str() -> String {
            switch self {
            case .Animation:
                return "Animation"
            case .Layout:
                return "Layout"
            case .Unknown:
                return "Unknown"
            }
        }
        
        static var count: Int { return TrialsCategory.Unknown.hashValue }
    }
    
    enum AnimationCategory {
        case Flip, Scale, PushUp, PushDown, Unknown /*Keep last*/
        func str() -> String {
            switch self {
            case .Flip:
                return "Flip"
            case .Scale:
                return "Scale"
            case .PushDown:
                return "PushDown"
            case .PushUp:
                return "PushUp"
            case .Unknown:
                return "Unknown"
            }
        }
        
        static var count: Int { return AnimationCategory.Unknown.hashValue }
    }
    
}