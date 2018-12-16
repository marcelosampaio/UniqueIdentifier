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
        
        var uniqueId = String()
        
        uniqueId = "BRT-099912-\(id)"
        
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

