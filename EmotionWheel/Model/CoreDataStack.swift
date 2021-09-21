//
//  CoreDataStack.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-17.
//

import Foundation
import CoreData

class CoreDataStack: ObservableObject {
    private let persistentContainer: NSPersistentContainer
    var managedObjectContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    init(inMemory: Bool = false) {
        persistentContainer = NSPersistentContainer(name: "EmotionsModel")
        
        if inMemory {
            persistentContainer.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        persistentContainer.loadPersistentStores(completionHandler: { description, error in
            if let error = error {
                print(error)
            }
        })
    }
    
    func save() {
        guard managedObjectContext.hasChanges else { return }
        do {
            try managedObjectContext.save()
        } catch {
            print(error)
        }
    }
    
    static var preview: CoreDataStack = {
        let coreDataStack = CoreDataStack(inMemory: true)
        EmotionRecord.insert(in: coreDataStack.managedObjectContext, name: "Joy", note: "I am happy", intensity: 0.7)
        EmotionRecord.insert(in: coreDataStack.managedObjectContext, name: "Angry", note: "I am angry", intensity: 0.3)
        EmotionRecord.insert(in: coreDataStack.managedObjectContext, name: "Tenderness", note: "I am tender", intensity: 0.4)
        coreDataStack.save()
        return coreDataStack
    }()
}
