//
//  EmotionWheelApp.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-06.
//

import SwiftUI
@main
struct EmotionWheelApp: App {
    private let coreDataStack = CoreDataStack(modelName: "EmotionsModel")
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                    coreDataStack.save()
                }
                .environment(\.managedObjectContext, coreDataStack.managedObjectContext)
        }
    }
}
