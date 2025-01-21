//
//  PostImageView.swift
//  Pawsome
//
//  Created by Vikas on 04/12/24.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            HStack {
                Button(action:  {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                })
                .accentColor(.primary)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                
                TextField("Add your caption  here...", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.myTheme.BeigeColor)
                    .cornerRadius(11)
                    .font(.headline)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                
                Button(action: {
                    postPicture()
                }, label: {
                    Text("Post Picture".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.myTheme.purpleColor)
                        .cornerRadius(11)
                })
                .accentColor(.white)
                .padding()
            })
        })
    }
    //MARK: FUNCTIONS
    func postPicture() {
        print("POST PICTURE TO THE DATABASE")
    }
}

struct PostImageView_Previews: PreviewProvider {
    
    @State static var image = UIImage(named: "dog1")!
    
    static var previews: some View {
        PostImageView(imageSelected: $image)
            .preferredColorScheme(.light)
    }
}
