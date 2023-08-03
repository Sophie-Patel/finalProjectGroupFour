//
//  examplearchive.swift
//  finalProjectGroupFour
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct examplearchive: View {
    var body: some View {
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
            VStack {
                Text("What are you most proud of today?")
                    .font(.title)
                Text("'I understood a hard concept at school and my teacher congratulated me!'")
            }

        }
    }
    
    struct examplearchive_Previews: PreviewProvider {
        static var previews: some View {
            examplearchive()
        }
    }
}
