//
//  EmotionRow.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import Foundation

import SwiftUI

struct EmotionRow: View {
    var emotion: Emotion
    @State private var showSheet: Bool = false
    var body: some View {
        HStack {
            Text("\(emotion.name)")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Spacer()
            Button {
                showSheet = true
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
            }.sheet(isPresented: $showSheet, content: {
                RecordEmotionView(emotion: emotion, showSheet: $showSheet)
            })
            Button {
            } label: {
                Image(systemName: "chevron.forward.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
            }
        }
        .background(emotion.color)
    }
}

struct EmotionRow_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRow(emotion: Emotion(name: "Happy", color: Color.yellow))
    }
}
