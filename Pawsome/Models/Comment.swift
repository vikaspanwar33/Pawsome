//
//  Comments.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import Foundation
import SwiftUI

struct Comment: Identifiable, Hashable {
    
    var id = UUID()
    var commentID: String
    var userID: String
    var username: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
