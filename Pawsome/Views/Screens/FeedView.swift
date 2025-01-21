//
//  FeedView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: Posts
    var title: String
    
    var body: some View {
        ScrollView(.vertical, content :  {
        
            LazyVStack {
                ForEach(posts.posts, id: \.self) { post in
                    PostView(post: post, showHeaderAndFooter: true)
                }
            }
        })
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: Posts(), title: "Feed Test")
        }
        
    }
}
