//
//  ProfilePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            Text("Profile Page")
                .font(.title)
                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
            Image("karliekloss")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(0.0)
                .cornerRadius(40)
            
            Text("Name - Karlie Kloss")
                .font(.title2)
                .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.278))
                .multilineTextAlignment(.leading)
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
            Text("Email - karliekloss@example.com")
                .font(.title2)
                .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.282))
            Image("streak")
            Text("Well done on your 100 day streak!")
                .font(.title2)
                .foregroundColor(Color(red: 0.266, green: 0.347, blue: 0.29))
                .padding(.all)
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
            struct
            ProfilePage_Previews: PreviewProvider {
                static var previews: some View {
                    ProfilePage()
                }
            }
            
