//
//  ContentViewMultiple.swift
//  SwiftUI2
//
//  Created by Gualtiero Frigerio on 05/08/2020.
//

import SwiftUI

struct ContentViewMultiple: View {
    @Binding var counter:Int
    @SceneStorage("bold") var showBold:Bool = false
    
    var body: some View {
        if showBold == true {
            Text("Counter = \(counter)").bold()
        }
        else {
            Text("Counter = \(counter)")
        }
        Button {
            counter = counter + 1
        } label: {
            Text("Increase")
        }
        Button {
            showBold.toggle()
        } label: {
            Text("Switch")
        }
    }
}

struct ContentViewMultiple_Previews: PreviewProvider {
    @State var counter = 0
    static var previews: some View {
        ContentViewMultiple_Previews_Wrapper()
    }
    
    struct ContentViewMultiple_Previews_Wrapper: View {
        @State var counter = 0

        var body: some View {
            ContentViewMultiple(counter:$counter)
        }
      }
}
