//
//  SettingsEditTextView.swift
//  Pawsome
//
//  Created by Vikas on 06/12/24.
//

import SwiftUI

struct SettingsEditTextView: View {
    
    @State var submissionText: String = ""
    @State var title: String
    @State var description: String
    @State var placeholder: String
    
    var body: some View {
        
        if #available(iOS 16, *) {
            
            NavigationStack {
                
                VStack {
                    
                    HStack {
                        Text(description)
                        Spacer(minLength: 0)
                    }
                    
                    TextField(placeholder, text: $submissionText)
                        .padding()
                        .frame(height:60)
                        .frame(maxWidth: .infinity)
                        .background(Color.myTheme.GreenColor)
                        .cornerRadius(12)
                        .font(.headline)
                        .autocapitalization(.sentences)
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Save".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .background(Color.myTheme.purpleColor)
                            .foregroundColor(Color.myTheme.BeigeColor)
                        
                    })
                    .accentColor(Color.myTheme.GreenColor)
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .navigationTitle(title)
                .navigationBarTitleDisplayMode(.large)
                
            }
        } else {
            NavigationView {
                VStack {
                    Text(description)
                    
                    TextField(placeholder, text: $submissionText)
                        .padding()
                        .frame(height:60)
                        .frame(maxWidth: .infinity)
                        .background(Color.myTheme.GreenColor)
                        .cornerRadius(12)
                        .font(.headline)
                        .autocapitalization(.sentences)
               
                    Button(action: {
                        
                    }, label: {
                        Text("Save".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .background(Color.myTheme.purpleColor)
                            .foregroundColor(Color.myTheme.BeigeColor)
                        
                    })
                    .accentColor(Color.myTheme.GreenColor)
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .navigationTitle(title)
                .navigationBarTitleDisplayMode(.large)
                
                
            }
        }
    }
}

struct SettingsEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsEditTextView(title: "Test Title", description: "This is user's description", placeholder: "Test Placeholder")
    }
}
