//
//  SettingsView.swift
//  Pawsome
//
//  Created by Vikas on 05/12/24.
//

import SwiftUI

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                ScrollView(.vertical, showsIndicators: false, content:  {
                  
                    
                    //MARK: SECTION 1: PAWSOME
                    GroupBox(label: SettingsLabelView(labelText: "PawSome", labelImage: "dot.radiowaves.left.and.right"), content: {
                        
                        HStack(alignment: .center, spacing: 10, content: {
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(12)
                            
                            Text("Pawsome is the ultimate social platform for pet lovers, where every tail wag, purr, and adorable mischief gets the spotlight it deserves! Pawsome lets you capture and share their best moments with a community that truly gets it. 🐶🐱🐾")
                                .font(.footnote)
                        })
                    })
                    .padding()
                    
                    //MARK: SECTION 2: PROFILE
                    GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill"), content: {
                        
                        NavigationLink(destination: SettingsEditTextView(submissionText: "Current Display Name", title: "Display Name", description: "Edit your display name here", placeholder: "Your display name here..."), label: {
                            SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.myTheme.OrangeColor)
                        })
                        
                        NavigationLink(destination: SettingsEditTextView(submissionText: "Current Bio here", title: "Profile Bio", description: "Your bio is a great place to tell others to know about your pet", placeholder: "Your display name here..."), label: {
                            
                            
                            SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.myTheme.OrangeColor)
                        })
                        
                        SettingsRowView(leftIcon: "photo", text: "Profile Picture", color: Color.myTheme.OrangeColor)
                        
                        SettingsRowView(leftIcon: "figure.walk", text: "Sign Out", color: Color.myTheme.OrangeColor)
                    })
                    .padding()
                    
                    //MARK: SECTION 3: APPLICATION
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        
                        SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.myTheme.GreenColor)
                        SettingsRowView(leftIcon: "folder.fill", text: "Terms and Condtions", color: Color.myTheme.GreenColor)
                        SettingsRowView(leftIcon: "globe", text: "PawSome's Website", color: Color.myTheme.GreenColor)
                    })
                    .padding()
                    
                    //MARK: SECTION 4: SIGN OFF
                    GroupBox {
                        Text("Pawsome is made with love. \n For your loved ones. \n Copyright 2024 💙 🐰")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .padding(.bottom, 80)
                             
                })
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                                .font(.title)
                        }
                    }
                }
            }
        } else {
            // Fallback for earlier iOS versions
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    Text("Placeholder")
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                                .font(.title)
                        }
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
