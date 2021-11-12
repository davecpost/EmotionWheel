//
//  EmotionHistoryListView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-21.
//

import SwiftUI

struct EmotionHistoryListView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \EmotionRecord.timestamp, ascending: true)]) private var emotionRecords: FetchedResults<EmotionRecord>
    var body: some View {
        ScrollView {
            ForEach(emotionRecords) { record in
                EmotionHistoryListRowView(record: record)
            }
        }
    }
}

struct EmotionHistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionHistoryListView().environment(\.managedObjectContext, CoreDataStack.preview.managedObjectContext)
    }
}
