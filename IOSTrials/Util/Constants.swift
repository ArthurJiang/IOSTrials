//
//  Constants.swift
//  IOSTrials
//
//  Created by ArthurJiang on 9/6/15.
//  Copyright (c) 2015 ArthurJiang. All rights reserved.
//

import Foundation

class Constants {
    enum TrialsCategory {
        case Animation, Unknown /*Keep last*/
        func str() -> String {
            switch self {
            case .Animation:
                return "Animation"
            case .Unknown:
                return "Unknown"
            }
        }
        
        static var count: Int { return TrialsCategory.Unknown.hashValue}
    }
    
}