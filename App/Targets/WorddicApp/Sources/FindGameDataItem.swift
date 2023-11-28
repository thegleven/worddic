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
