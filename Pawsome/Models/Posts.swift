//
//  Posts.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import Foundation

class Posts: ObservableObject {
    
    @Published var posts = [Post]()
    
    init() {
        
        print("Fetch data")
        
    
        let post1 = Post(postID: "", userID: "", username: "Tony Stark", caption: "I am Iron Man.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post2 = Post(postID: "", userID: "", username: "Steve Rogers", caption: "I can do this all day.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post3 = Post(postID: "", userID: "", username: "Bruce Banner", caption: "That's my secret, I'm always angry.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post4 = Post(postID: "", userID: "", username: "Natasha Romanoff", caption: "I've got red in my ledger.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post5 = Post(postID: "", userID: "", username: "Clint Barton", caption: "I don't miss.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post6 = Post(postID: "", userID: "", username: "Thor Odinson", caption: "Bring me Thanos!", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post7 = Post(postID: "", userID: "", username: "Loki Laufeyson", caption: "I am burdened with glorious purpose.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post8 = Post(postID: "", userID: "", username: "Wanda Maximoff", caption: "I can't control their fear, only my own.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post9 = Post(postID: "", userID: "", username: "Pietro Maximoff", caption: "You didn't see that coming?", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post10 = Post(postID: "", userID: "", username: "Scott Lang", caption: "I'm Ant-Man.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post11 = Post(postID: "", userID: "", username: "Stephen Strange", caption: "Dormammu, I've come to bargain.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post12 = Post(postID: "", userID: "", username: "Peter Parker", caption: "With great power comes great responsibility.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post13 = Post(postID: "", userID: "", username: "James Rhodes", caption: "Next time, baby.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post14 = Post(postID: "", userID: "", username: "Sam Wilson", caption: "On your left.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post15 = Post(postID: "", userID: "", username: "Bucky Barnes", caption: "I'm with you till the end of the line.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post16 = Post(postID: "", userID: "", username: "Vision", caption: "What is grief, if not love persevering?", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post17 = Post(postID: "", userID: "", username: "T'Challa", caption: "Wakanda Forever.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post18 = Post(postID: "", userID: "", username: "Shuri", caption: "Just because something works, doesn’t mean it can’t be improved.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post19 = Post(postID: "", userID: "", username: "Okoye", caption: "I will not ask you again.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post20 = Post(postID: "", userID: "", username: "Groot", caption: "I am Groot.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post21 = Post(postID: "", userID: "", username: "Rocket Raccoon", caption: "Ain't no thing like me, 'cept me!", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post22 = Post(postID: "", userID: "", username: "Gamora", caption: "I have lived most of my life surrounded by my enemies.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post23 = Post(postID: "", userID: "", username: "Drax", caption: "Nothing goes over my head. My reflexes are too fast.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post24 = Post(postID: "", userID: "", username: "Star-Lord", caption: "I'm Star-Lord, man!", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post25 = Post(postID: "", userID: "", username: "Nebula", caption: "I will hunt my father like a dog and I will tear him apart slowly.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post26 = Post(postID: "", userID: "", username: "Yondu", caption: "I'm Mary Poppins, y'all!", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post27 = Post(postID: "", userID: "", username: "Thanos", caption: "I am inevitable.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post28 = Post(postID: "", userID: "", username: "Loki", caption: "You will never be a god.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post29 = Post(postID: "", userID: "", username: "Carol Danvers", caption: "Higher, further, faster, baby.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post30 = Post(postID: "", userID: "", username: "Nick Fury", caption: "Last time I trusted someone, I lost an eye.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post31 = Post(postID: "", userID: "", username: "Maria Hill", caption: "We're gonna be okay. You can let go now.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post32 = Post(postID: "", userID: "", username: "Phil Coulson", caption: "I still believe in heroes.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post33 = Post(postID: "", userID: "", username: "Pepper Potts", caption: "I am Iron Man's assistant. And now you're not.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post34 = Post(postID: "", userID: "", username: "Happy Hogan", caption: "I do whatever Mr. Stark needs.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post35 = Post(postID: "", userID: "", username: "Hank Pym", caption: "It's not about saving our world. It's about saving theirs.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post36 = Post(postID: "", userID: "", username: "Hope Van Dyne", caption: "When you’re small, you have superhuman strength.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post37 = Post(postID: "", userID: "", username: "Janet Van Dyne", caption: "I’ll be seeing you again.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post38 = Post(postID: "", userID: "", username: "Howard Stark", caption: "No amount of money ever bought a second of time.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post39 = Post(postID: "", userID: "", username: "Erik Selvig", caption: "The Tesseract is misbehaving.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)
        let post40 = Post(postID: "", userID: "", username: "Jane Foster", caption: "Science is magic that works.", dateCreated: Date(), likeCount: 0, likedByCurrentUser: false)


       
        self.posts.append(post1)
        self.posts.append(post2)
        self.posts.append(post3)
        self.posts.append(post4)
        self.posts.append(post5)
        self.posts.append(post6)
        self.posts.append(post7)
        self.posts.append(post8)
        self.posts.append(post9)
        self.posts.append(post10)
        self.posts.append(post11)
        self.posts.append(post12)
        self.posts.append(post13)
        self.posts.append(post14)
        self.posts.append(post15)
        self.posts.append(post16)
        self.posts.append(post17)
        self.posts.append(post18)
        self.posts.append(post19)
        self.posts.append(post20)
        self.posts.append(post21)
        self.posts.append(post22)
        self.posts.append(post23)
        self.posts.append(post24)
        self.posts.append(post25)
        self.posts.append(post26)
        self.posts.append(post27)
        self.posts.append(post28)
        self.posts.append(post29)
        self.posts.append(post30)
        self.posts.append(post31)
        self.posts.append(post32)
        self.posts.append(post33)
        self.posts.append(post34)
        self.posts.append(post35)
        self.posts.append(post36)
        self.posts.append(post37)
        self.posts.append(post38)
        self.posts.append(post39)
        self.posts.append(post40)

    }
    ///USED FOR SINGLE POST SELECTION
    init(post: Post) {
        self.posts.append(post)
    }
}
