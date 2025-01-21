//
//  ImageGridView.swift
//  Pawsome
//
//  Created by Vikas on 29/11/24.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: Posts
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
            ],
            alignment: .center,
            spacing: nil,
            pinnedViews: [],
            content: {
                ForEach(posts.posts, id: \.self) { post in
                    
                    NavigationLink(destination: FeedView(posts: Posts(post: post), title: "Posts"),
                                   label: {
                                       PostView(post: post, showHeaderAndFooter: false)
                        
                    })
                }
            })
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: Posts())
            .previewLayout(.sizeThatFits)
    }
}
