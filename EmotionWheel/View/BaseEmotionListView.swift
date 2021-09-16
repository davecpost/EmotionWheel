//
//  BaseEmotionListView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI

struct BaseEmotionListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(emotionWheel) { emotion in
                    EmotionRow(emotion: emotion)
                    .listRowBackground(emotion.color)
                }
            }
            .navigationTitle("Emotions")
        }
    }
}

struct BaseEmotionListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseEmotionListView()
    }
}
