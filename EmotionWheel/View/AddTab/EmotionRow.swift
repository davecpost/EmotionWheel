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
    @Binding var showEmotionDetail: Bool
    @Binding var selectedEmotion: Emotion?
    @State private var showAddSheet: Bool = false
    var body: some View {
        HStack {
            Text("\(emotion.name)")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Spacer()
            Button {
                showAddSheet = true
            } label: {
                Image(systemName: "plus")
                    .font(.system(.largeTitle))
                    .foregroundColor(.black)
            }.sheet(isPresented: $showAddSheet, content: {
                NavigationView {
                    RecordEmotionView(emotion: emotion, showAddSheet: $showAddSheet)
                        .navigationTitle(emotion.name)
                        .navigationBarItems(trailing: Button("Cancel") { showAddSheet = false })
                }
            })
            if(emotion.subEmotions.count > 0) {
                Button(action: {
                    selectedEmotion = emotion
                    showEmotionDetail = true
                }, label: {
                    Image(systemName: "chevron.forward.circle")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                })
            }
        }
        .background(emotion.color)
    }
}

struct EmotionRow_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRow(emotion: Emotion(name: "Happy", color: Color.yellow, subEmotions: [Emotion(name: "joy", color: Color.yellow)]), showEmotionDetail: .constant(false), selectedEmotion: .constant(nil))
    }
}
