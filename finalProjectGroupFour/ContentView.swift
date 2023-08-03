//
//  ContentView.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @Binding var journalDays: [JournalDay]
    var body: some View {
       
            NavigationStack {
                VStack {
                    ZStack {
                        Color(red: (248/255), green: (248/255), blue: (243/255))
                            .ignoresSafeArea()
                    VStack(alignment: .center) {
                  
                        Image("finalfinaldiem")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)

                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            HStack {
                                NavigationLink(destination:SubmitContentView (journalText:"")) {
                                    Image("homeimage")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .navigationBarBackButtonHidden(true)
                                }
                                NavigationLink(destination: ArchivePage(journalDays:$journalDays)) {
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
                                        .aspectRatio(contentMode: .fit)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(journalDays: .constant([]))
        }
    }
                                               

