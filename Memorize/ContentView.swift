//
//  ContentView.swift
//  Memorize
//
//  Created by 최지현 on 4/7/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃","🕷️","😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}
struct CardView: View {
    let content : String // 타입  var or let ?? 기본값이 없으면 let
    @State var isFacedUp = true
    
    var body: some View {
        ZStack {
            let base  = RoundedRectangle(cornerRadius: 12)
            if isFacedUp  {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
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
