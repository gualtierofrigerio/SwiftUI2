//
//  SwiftUI2App.swift
//  SwiftUI2
//
//  Created by Gualtiero Frigerio on 03/08/2020.
//

import SwiftUI

@main
struct SwiftUI2App: App {
    @AppStorage("counter") var counter = 0
    
    var body: some Scene {
        WindowGroup {
            ContentViewMultiple(counter:$counter)
        }
    }
}
