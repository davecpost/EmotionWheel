//
//  EmotionDetailView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-21.
//

import Foundation

import SwiftUI
import CoreData

struct EmotionDetailView: View {
    @Binding var selectedRecord: EmotionRecord!
    @Binding var showDetail: Bool
    let animation: Namespace.ID
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                ZStack {
                    Capsule()
                        .fill(Emotion.getColor(for: selectedRecord.name))
                        .matchedGeometryEffect(id: selectedRecord.id, in: animation)
                    VStack {
                        HStack {
                            Text("\(selectedRecord.name ?? "-")").font(.title)
                        }
                        Text("\(selectedRecord.dateString() ?? "-")")
                        HStack {
                            Text("Intensity: \(selectedRecord.intensityString())")
                        }
                        HStack {
                            Text("\(selectedRecord.note ?? "-")")
                        }
                    }
                }
            }
            Button {
                withAnimation {
                    showDetail.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.8))
                    .clipShape(Circle())
                    .contentShape(Circle())
            }
        }.background((Color.white.ignoresSafeArea(.all)))
    }
}

struct EmotionDetailView_Previews: PreviewProvider {
    @Namespace static var previewAnimation
    static var previews: some View {
        let context = CoreDataStack.preview.managedObjectContext
        EmotionDetailView(selectedRecord: .constant(EmotionRecord.preview(in: context)), showDetail: .constant(true), animation: previewAnimation).environment(\.managedObjectContext, context)
    }
}
