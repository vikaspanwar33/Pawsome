//
//  ProfileHeaderView.swift
//  Pawsome
//
//  Created by Vikas on 04/12/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName: String
    
    var body: some View {


            VStack(alignment: .center, spacing:  10, content: {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 129, height: 120, alignment: .center)
                    .cornerRadius(40)
                
                //MARK: USER NAME
                Text(profileDisplayName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                //MARK: BIO
                Text("I'm Batman")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                HStack(alignment: .center, spacing: 20, content: {
                    
                    //MARK: POSTS
                    VStack(alignment: .center, spacing: 5,  content: {
                        
                        Text("5")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(Color.gray)
                            .frame(width: 20, height: 2, alignment: .center)
                        
                        Text("Posts")
                            .font(.callout)
                            .fontWeight(.medium)
                    })
                    
                    //MARK: LIKES
                    VStack(alignment: .center, spacing: 5,  content: {
                        
                        Text("25")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(Color.gray)
                            .frame(width: 20, height: 2, alignment: .center)
                        
                        Text("Likes")
                            .font(.callout)
                            .fontWeight(.medium)
                    })
                })
            })
            
            .frame(maxWidth: .infinity)
            .padding()
            .background(Image("profileBackground").resizable()
                .scaledToFill().opacity(0.3).edgesIgnoringSafeArea(.all))
           
       
        }
    
}

struct ProfileHeaderView_Previews: PreviewProvider {
    
    @State static var name: String = "Bruce Wayne"
    static var previews: some View {
        ProfileHeaderView(profileDisplayName: $name )
            .previewLayout(.sizeThatFits)
    }
}
