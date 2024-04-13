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
            CardView(isFacedUp: false)
            CardView()
            CardView(isFacedUp: true)
            CardView(isFacedUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}
struct CardView: View {
    @State var isFacedUp = true
    
    var body: some View {
        ZStack {
            let base  = RoundedRectangle(cornerRadius: 12)
            if isFacedUp  {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFacedUp.toggle()
        }
    }
}











#Preview {
    ContentView()
}
