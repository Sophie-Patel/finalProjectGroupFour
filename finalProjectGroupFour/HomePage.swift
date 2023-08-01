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
            Text("4.8.23")
            Text("What 3 things are you most grateful for today?")
            TextField("Prompt response", text: $text)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
                NavigationLink(destination: FriendsPage()) {
                    Text("Submit")
                }
                
                }
            }
    
               
        }
    


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
