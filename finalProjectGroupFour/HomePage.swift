//
//  HomePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct HomePage: View {
    @State private var text = ""
    var body: some View {
        VStack {
            Text("date")
            Text("prompt")
            TextField("Prompt ans", text: $text)
            Button("submit") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
    
               
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
