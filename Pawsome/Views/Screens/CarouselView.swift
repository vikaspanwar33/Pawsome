//
//  CarouselView.swift
//  Pawsome
//
//  Created by Vikas on 02/10/24.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection: Int = 1
    @State var timerAdded: Bool = false
    
    let maxCount = 8
    
    
    var body: some View {
        TabView(selection: $selection, content: {
            ForEach(1..<8) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.easeInOut)
        .onAppear(perform: {
            if !timerAdded {
                addTimer()
            }
        })
    }
    
    //MARK: FUNCTIONS
    // TIMER TO CHANGE PICTURES AUTOMATICALLY
    func addTimer() {
        
        timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { (timer) in
            
            if selection == maxCount - 1 {
                selection = 1
            } else {
                selection += 1
            }
        }
        timer.fire()
    }
}


struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
