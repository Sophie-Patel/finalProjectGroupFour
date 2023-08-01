//
//  ContentView.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    var body: some View {
        
        NavigationStack {
            VStack {
                VStack {
                    Text(" ")
                }
                .toolbar {
                    ToolBarItemGroup(placement: .status) {
                        NavigationLink(destination: HomePage()) {
                            Text("H")
                        }
                        NavigationLink(destination: ArchivePage()) {
                            Text("A")
                        }
                        NavigationLink(destination: FriendsPage()) {
                            Text("F")
                        }
                        NavigationLink(destination: ProfilePage()) {
                            Text("P")
                        }
                    }
                }
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
