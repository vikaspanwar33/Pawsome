//
//  UploadView.swift
//  Pawsome
//
//  Created by Vikas on 29/11/24.
//

import SwiftUI

struct UploadView: View {
    
    @State var showImagePicker: Bool = false
    @State var imageSelected: UIImage = UIImage(named: "logo")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    
    @State var showPostImageView: Bool = false
    
    var body: some View {
        ZStack {
            VStack{
                Button(action: {
                    //Add button action
                    
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                }, label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.myTheme.BeigeColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                .background(Color.myTheme.GreenColor)
                
                Button(action: {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                }, label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.myTheme.BeigeColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                .background(Color.myTheme.purpleColor)
            }
            .sheet(isPresented: $showImagePicker, onDismiss: segueToPostImageView, content: {
                ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
            })
            
            
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
                .fullScreenCover(isPresented: $showPostImageView, content: {
                    PostImageView(imageSelected: $imageSelected)
                })
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    //MARK: FUNCTIONS
    
    func segueToPostImageView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            showPostImageView.toggle()
        }
    }
}
struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
