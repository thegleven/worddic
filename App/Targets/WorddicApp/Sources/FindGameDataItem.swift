//
//  FindGameDataItem.swift
//  WorddicAppUI
//
//  Created by theshamuel on 28/10/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import Foundation
import SwiftData

@Model
class FindGameDataItem: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String) {
        
        self.id = UUID().uuidString
        self.name = name
    
    }
}
