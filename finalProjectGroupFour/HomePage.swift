//
//  HomePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct HomePage: View {
    @State private var text = ""
    @Binding var journalDays: [JournalDay]
    var body: some View {
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
            VStack {
                
                Text("4.8.23")
                    .font(.title2)
                Text("What 3 things are you most grateful for today?")
                    .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                TextField("Prompt response", text: $text)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: finalfriendspage(journalDays:$journalDays)) {
                    Text("Submit")
                        .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
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
                                    NavigationLink(destination: SubmitContentView (journalText:"")) {
                                        Image("homeimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
                                    }
                                    Spacer()
                                    NavigationLink(destination: ArchivePage(journalDays:.constant([]))) {
                                        Image("archiveimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    Spacer()
                                    NavigationLink(destination: finalfriendspage(journalDays:$journalDays)) {
                                        Image("friendsimage")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                  Spacer()
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
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}
        
        
        struct HomePage_Previews: PreviewProvider {
            static var previews: some View {
                HomePage(journalDays:.constant([]))
            }
        }
 
