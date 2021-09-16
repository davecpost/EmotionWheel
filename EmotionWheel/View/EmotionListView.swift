//
//  BaseEmotionListView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI

struct EmotionListView: View {
    var emotions: [Emotion]
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(emotions) { emotion in
                    EmotionRow(emotion: emotion)
                }
                .navigationTitle("Emotions")
            }
        }
    }
}

struct BaseEmotionListView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionListView(emotions: emotionWheel)
    }
}
