//
//  ContentView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: Posts(), title: "Feed")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }

            NavigationView {
                BrowseView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.systemBackground))
                    .edgesIgnoringSafeArea(.all)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Browse")
            }

            UploadView()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }

            NavigationView {
                ProfileView(isMyProfile: true, profileDisplayName: "My Profile", profleUserId: "")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .accentColor(Color.myTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
