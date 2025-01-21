//
//  PostView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct PostView: View {
    
    @State var post: Post
    var showHeaderAndFooter: Bool
    @State private var isLiked: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            // MARK: HEADER
            if showHeaderAndFooter {
                HStack {
                    
                    NavigationLink(destination: ProfileView(isMyProfile: false, profileDisplayName: post.username, profleUserId: post.userID), label: {
                        Image("dog1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(20)
                        
                        Text(post.username)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                        
                    })
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 10)
            }
            
            
            //MARK: IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: FOOTER
            if showHeaderAndFooter {
                
                HStack(alignment: .center, spacing: 20, content: {
                    
                    Button(action: {
                        
                        isLiked.toggle()
                        if isLiked {
                            post.likeCount += 1
                        } else {
                            post.likeCount -= 1
                        }
                    }, label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .font(.title3)
                            .foregroundColor(isLiked ? .red : .primary)
                    })
                    Text("\(post.likeCount)")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    
                    //MARK: COMMENT ICON
                    NavigationLink(destination: CommentsView(), label: {
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                        
                    })
                    
                    Image(systemName: "paperplane")
                        .font(.title3)
                    
                    Spacer()
                    
                })
                .padding(.all, 10)
                
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 6)
                }
                
            }
            
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: Post = Post(postID: "", userID: "", username: "Loki Odinson", caption: "I'm a bad boi", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
