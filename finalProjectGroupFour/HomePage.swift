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
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
            VStack {
                
                Text("4.8.23")
                Text("What 3 things are you most grateful for today?")
                TextField("Prompt response", text: $text)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: finalfriendspage()) {
                    Text("Submit")
                }
                
                
                // navigation bar
                NavigationStack {
                    VStack {
                        VStack(alignment: .center) {
                            Text(" ")
                        }
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                HStack {
                                    NavigationLink(destination: HomePage()) {
                                        Image("homeimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    NavigationLink(destination: ArchivePage()) {
                                        Image("archiveimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    
                                    NavigationLink(destination: finalfriendspage()) {
                                        Image("friendsimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    
                                    NavigationLink(destination: ProfilePage()) {
                                        Image("profileimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode:
                                                    .fit)
                                    }
                                }
                            }
                        }
                    }
                }
                
                
                
                
            }
        }
    }
}
        
        
        struct HomePage_Previews: PreviewProvider {
            static var previews: some View {
                HomePage()
            }
        }
 
