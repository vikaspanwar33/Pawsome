//
//  ProfileView.swift
//  Pawsome
//
//  Created by Vikas on 04/12/24.
//

import SwiftUI

struct ProfileView: View {
    var isMyProfile: Bool
    @State var profileDisplayName: String
    var profleUserId: String
    var posts = Posts()
    @State private var isSettingsPresented = false

    var body: some View {
        Group {
            if #available(iOS 16.0, *) {
                NavigationStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        ProfileHeaderView(profileDisplayName: $profileDisplayName)
                        ImageGridView(posts: posts)
                    }
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                isSettingsPresented = true
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .accentColor(Color.myTheme.purpleColor)
                                    .opacity(isMyProfile ? 1.0 : 0.0)
                            }
                            .sheet(isPresented: $isSettingsPresented) {
                                SettingsView()
                            }
                        }
                    }
                }
            } else {
             
                NavigationView {
                    ScrollView(.vertical, showsIndicators: false) {
                        ProfileHeaderView(profileDisplayName: $profileDisplayName)
                        ImageGridView(posts: posts)
                    }
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                isSettingsPresented = true
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .accentColor(Color.myTheme.purpleColor)
                                    .opacity(isMyProfile ? 1.0 : 0.0)
                            }
                            .sheet(isPresented: $isSettingsPresented) {
                                SettingsView() 
                            }
                        }
                    }
                }
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isMyProfile: true, profileDisplayName: "Bruce Wayne", profleUserId: "12345")
    }
}
