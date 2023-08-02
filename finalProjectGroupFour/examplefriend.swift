//
//  examplefriend.swift
//  finalProjectGroupFour
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct examplefriend: View {
    var body: some View {
        ZStack {
            Color(red: (255/255), green: (240/255), blue: (219/255))
                .ignoresSafeArea()
            Text("I am grateful for my parents, my sister and my health")
                .multilineTextAlignment(.center)
        }
    }
    
    struct examplefriend_Previews: PreviewProvider {
        static var previews: some View {
            examplefriend()
        }
    }
}
