//
//  ContentView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            EmotionTabView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Add")
                }
            EmotionHistoryView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("History")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
