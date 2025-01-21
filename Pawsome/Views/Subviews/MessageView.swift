//
//  MessageView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

//Subview dont take entire screen

struct MessageView: View {
    
    @State var comment: Comment
    
    var body: some View {
        HStack {
            
            //MARK: PROFILE IMAGE
            Image("dog1")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(30)
            
            VStack(alignment: .leading, spacing: 4, content:  {
                
                //MARK: USERNAME
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                //MARK: CONTENT
                Text(comment.content)
                    .font(.callout)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.green)
            })
            
            Spacer(minLength: 0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
   
    static var comment: Comment = Comment(commentID: "", userID: "", username: "Bruce Wayne", content: "Cool photo, Mr. Superman! lol", dateCreated: Date())
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
