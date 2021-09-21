//
//  EmotionHistoryView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI
import CoreData

struct EmotionHistoryView: View {
    @Namespace var animation
    @State private var selectedRecord: EmotionRecord!
    @State private var showDetail: Bool = false
    
    var body: some View {
        ZStack {
            EmotionHistoryListView(animation: animation, selectedRecord: $selectedRecord, showDetail: $showDetail)
            if showDetail {
                EmotionDetailView(selectedRecord: $selectedRecord, showDetail: $showDetail, animation: animation)
            }
        }
    }
}

struct EmotionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionHistoryView().environment(\.managedObjectContext, CoreDataStack.preview.managedObjectContext)
    }
}
