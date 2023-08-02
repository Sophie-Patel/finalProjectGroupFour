//
//  ArchivePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ArchivePage: View {
    var body: some View {
        
        
        VStack {
            Text("Archive page")
                .font(.title)
            NavigationLink(destination: examplearchive()) {
                Text("3.8.23")
            }
            Text("2.8.23")
            Text("1.8.23")
            Text("31.7.23")
            
            
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
        struct ArchivePage_Previews: PreviewProvider {
            static var previews: some View {
                ArchivePage()
                
            }
        }
  
