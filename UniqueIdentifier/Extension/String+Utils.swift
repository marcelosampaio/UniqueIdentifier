//
//  String+Utils.swift
//  UniqueIdentifier
//
//  Created by Marcelo on 16/12/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

extension String {
    
    // MARK: - Unique Identifier
    func uniqueId(id: Int) -> String {
        // user id
        let userId = String(format: "%X", id)
        
        // currente date
        let date = Date()
        let calendar = Calendar.current
        let components : DateComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .nanosecond], from: date)

        let year : String = String(format: "%X", components.year!)
        let month : String = String(format: "%X", components.month!)
        let day : String = String(format: "%X", components.day!)
        
        let hour : String = String(format: "%X", components.hour!)
        let minute : String = String(format: "%X", components.minute!)
        let second : String = String(format: "%X", components.second!)
        let nanoSecond : String = String(format: "%X", components.nanosecond!)

        var uniqueId = "\(userId)-"
        uniqueId.append("\(year)-")
        uniqueId.append("\(month)-")
        uniqueId.append("\(day)-")
        uniqueId.append("\(hour)-")
        uniqueId.append("\(minute)-")
        uniqueId.append("\(second)-")
        uniqueId.append("\(nanoSecond)")
        
        return uniqueId
    }
    
    
    // MARK: - Existence
    func contains(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    func containsIgnoringCase(find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }
    
}

