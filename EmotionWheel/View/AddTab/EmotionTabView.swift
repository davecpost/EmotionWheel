//
//  EmotionTabView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-17.
//

import SwiftUI

struct EmotionTabView: View {
    var body: some View {
        NavigationView {
            EmotionListView(emotions: Emotion.emotions)
        }
    }
}

struct EmotionTabView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionTabView()
    }
}
