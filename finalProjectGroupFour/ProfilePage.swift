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
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 162/255, green: 193/255, blue: 172/255))
                Image("karliekloss")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(0.0)
                    .cornerRadius(40)
                Divider()
                HStack (spacing:40){
                    Text("Name")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.278))
                        .multilineTextAlignment(.leading)
                    
                        
                    
                    Text("Karlie Kloss")
                        .font(.title2)
                        .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.278))
                        .multilineTextAlignment(.leading)
                        
                }
                Divider()
                
                HStack (spacing:40){
                    Text("Email")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.282))
                    Text("karliekloss@example.com")
                        .font(.title2)
                        .foregroundColor(Color(red: 0.258, green: 0.34, blue: 0.278))
                        .multilineTextAlignment(.leading)
                        
                }
                Divider()
                    Image("perfectcirclestreak")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(150)
                        .frame(width:100)
                    Text("Well done on your 100 day streak!")
                        .font(.title2)
                        .foregroundColor(Color(red: 0.266, green: 0.347, blue: 0.29))
                        .padding(.all)
                        
                NavigationStack {
                    VStack {
                        VStack(alignment: .center) {
                            Text(" ")
                        }
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                HStack (spacing:40){
                                    NavigationLink(destination: HomePage(journalDays:$journalDays)) {
                                        Image("houseicon2")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .navigationBarBackButtonHidden(true)
                                    }
                                    NavigationLink(destination: ArchivePage(journalDays:.constant([]))) {
                                        Image("archiveicon2")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    
                                    NavigationLink(destination: finalfriendspage(journalDays:$journalDays)) {
                                        Image("peopleicon2")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    
                                    NavigationLink(destination: ProfilePage(journalDays:$journalDays)) {
                                        Image("personicon2")
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
            .padding(.all)
        }
    }
}

        struct
    ProfilePage_Previews: PreviewProvider {
            static var previews: some View {
                ProfilePage(journalDays:.constant([]))
            }
        }
        
   
