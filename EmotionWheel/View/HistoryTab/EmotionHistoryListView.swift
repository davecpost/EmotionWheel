//
//  EmotionHistoryListView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-21.
//

import SwiftUI

struct EmotionHistoryListView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \EmotionRecord.timestamp, ascending: true)]) private var emotionRecords: FetchedResults<EmotionRecord>
    let animation: Namespace.ID
    @Binding var selectedRecord: EmotionRecord!
    @Binding var showDetail: Bool
    var body: some View {
        List(emotionRecords) { record in
            ScrollView {
                ZStack {
                    Capsule()
                        .fill(Emotion.getColor(for: record.name))
                        .matchedGeometryEffect(id: record.id, in: animation)
                        .onTapGesture {
                            selectedRecord = record
                            withAnimation {
                                showDetail.toggle()
                            }
                        }
                    Text("\(record.name ?? "-")").padding()
                }
            }
        }
    }
}

struct EmotionHistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionHistoryView().environment(\.managedObjectContext, CoreDataStack.preview.managedObjectContext)
    }
}
