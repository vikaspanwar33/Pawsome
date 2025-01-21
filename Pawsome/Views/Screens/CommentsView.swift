//
//  CommentsView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct CommentsView: View {
    
    @State var submissionText: String = ""
    @State var commentArray = [Comment]()
    
    var body: some View {
       
        VStack {
            
            ScrollView {
                LazyVStack {
                    ForEach(commentArray, id:\.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            
            HStack {
                
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    
                TextField("Add a Comment here...", text:$submissionText)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(Color.myTheme.purpleColor)
            }
            .padding(.all, 10)
        }
        .navigationTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            getComments()
        })
    }
    
    func getComments() {
        print("get all comments from Database")
        
        let comment1 = Comment(commentID: "", userID: "", username: "Clark Kent", content: "Batman! you suck!", dateCreated: Date())
        
        let comment2 = Comment(commentID: "", userID: "", username: "Selina Kyle", content: "Shut up, Clark!", dateCreated: Date())
        
        let comment3 = Comment(commentID: "", userID: "", username: "Lois Lane", content: "you guys are hilarious haha", dateCreated: Date())
        
        let comment4 = Comment(commentID: "", userID: "", username: "Arthur Queen", content: "Do you guys wanna watch The Avengers tonight?", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
     
    }
}
