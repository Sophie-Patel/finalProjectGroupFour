//
//  ProfilePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ProfilePage: View {
    @Binding var journalDays: [JournalDay]
    var body: some View {
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
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
                Image("perfectcirclestreak")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
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
                                NavigationLink(destination: HomePage(journalDays:$journalDays)) {
                                    Image("homeimage")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink(destination: ArchivePage(journalDays:.constant([]))) {
                                    Image("archiveimage")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                                NavigationLink(destination: finalfriendspage(journalDays:$journalDays)) {
                                    Image("friendsimage")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                                NavigationLink(destination: ProfilePage(journalDays:$journalDays)) {
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
            ProfilePage(journalDays:.constant([]))
        }
    }
    
}
