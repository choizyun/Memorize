//
//  ContentView.swift
//  Memorize
//
//  Created by 최지현 on 4/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFacedUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}
struct CardView: View {
    var isFacedUp : Bool = false
    
    var body: some View {
        if isFacedUp  {
            ZStack (content: {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            })
        }
        else {
            RoundedRectangle(cornerRadius: 12)
        }
    }
}











#Preview {
    ContentView()
}
