//
//  ConditionalView.swift
//  SwiftUI2
//
//  Created by Gualtiero Frigerio on 03/08/2020.
//

import SwiftUI

struct ConditionalView: View {
    private var conditionalText:String?
    
    init(conditionalText:String? = nil) {
        self.conditionalText = conditionalText
    }
    
    var body: some View {
        if let text = conditionalText {
            Text("\(text)")
        }
        else {
            Text("No text provided")
        }
    }
}

struct ConditionalView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalView()
    }
}
