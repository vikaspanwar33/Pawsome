//
//  BrowseView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct BrowseView: View {
    var posts = Posts()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CarouselView()
            ImageGridView(posts: posts)
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Take full available space
        .background(Color(.systemBackground)) // Optional: Add a background color
        .edgesIgnoringSafeArea(.all) // Ignore safe area for full-screen behavior
    }
}


struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
     
    }
}
