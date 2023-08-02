//
//  FriendsPage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct FriendsPage: View {
    var body: some View {
        
        VStack {
            Text("Friends Page")
                .font(.title)
        Text("Click below to view your friends responses")
            NavigationLink(destination: examplefriend()) {
                Text("I am grateful for...")}
        Text("I am grateful for...")
        Text("I am grateful for...")
            
        }
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
                            
                            NavigationLink(destination: FriendsPage()) {
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

            struct FriendsPage_Previews: PreviewProvider {
                static var previews: some View {
                    FriendsPage()
    }
}
