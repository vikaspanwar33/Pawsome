//
//  Post.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import Foundation
import SwiftUI


struct Post: Identifiable, Hashable {
    //postID
    //userID
    //User username
    //caption
    //date
    //like count
    //liked by current user
    
    var id = UUID()
    var postID: String
    var userID: String
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByCurrentUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    

}


