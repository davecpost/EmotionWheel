//
//  BaseEmotionListView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI

struct EmotionListView: View {
    var emotions: [Emotion]
    @State private var selectedEmotion: Emotion? = nil
    @State private var showEmotionDetail: Bool = false
    var body: some View {
        ScrollView {
            ForEach(emotions) { emotion in
                EmotionRow(emotion: emotion, showEmotionDetail: $showEmotionDetail, selectedEmotion: $selectedEmotion)
            }
            if let subEmotions = selectedEmotion?.subEmotions {
                NavigationLink("", destination: EmotionListView(emotions: subEmotions).navigationTitle(selectedEmotion?.name ?? "Emotions"), isActive: $showEmotionDetail)
                    
            }
        }
    }
}

struct BaseEmotionListView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionListView(emotions: Emotion.emotions)
    }
}
