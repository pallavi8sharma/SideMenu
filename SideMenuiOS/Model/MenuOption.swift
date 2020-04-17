//
//  MenuOption.swift
//  SideMenuiOS
//
//  Created by pallavi sharma on 16/04/2020.
//  Copyright © 2020 pallavi sharma. All rights reserved.
//
import UIKit

enum MenuOption: Int , CustomStringConvertible{
    
    case Profile
    case Inbox
    case Notification
    case Setting
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notification: return "Notification"
        case .Setting: return "Setting"

            
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "profile") ?? UIImage()
        case .Inbox: return UIImage(named: "inbox") ?? UIImage()
        case .Notification: return UIImage(named: "notification") ?? UIImage()
        case .Setting: return UIImage(named: "setting") ?? UIImage()

            
        }
    }

}
