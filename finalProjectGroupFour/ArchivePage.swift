////
////  ArchivePage.swift
////  finalProjectGroupFour
////
////  Created by scholar on 01/08/2023.
////
//
//import SwiftUI
//
//struct ArchivePage: View {
//    var body: some View {
//        ZStack {
//            Color(red: (248/255), green: (248/255), blue: (243/255))
//                .ignoresSafeArea()
//
//            VStack {
//                Text("Archive page")
//                    .font(.title)
//                NavigationLink(destination: examplearchive()) {
//                    Text("3.8.23")
//                }
//                Text("2.8.23")
//                Text("1.8.23")
//                Text("31.7.23")
//
//            // THIS ENTIRE PAGE AND THE EXAMPLE ARCHIVE PAGE IS A PLACEHOLDER TO BE REPLACED BY MARTINA ON THURSDAY
//            }
//            NavigationStack {
//                VStack {
//                    VStack(alignment: .center) {
//                        Text(" ")
//                    }
//                    .toolbar {
//                        ToolbarItemGroup(placement: .status) {
//                            HStack {
//                                NavigationLink(destination: HomePage()) {
//                                    Image("homeimage")
//                                        .resizable(resizingMode: .stretch)
//                                        .aspectRatio(contentMode: .fit)
//                                }
//                                NavigationLink(destination: ArchivePage()) {
//                                    Image("archiveimage")
//                                        .resizable(resizingMode: .stretch)
//                                        .aspectRatio(contentMode: .fit)
//                                }
//
//                                NavigationLink(destination: finalfriendspage()) {
//                                    Image("friendsimage")
//                                        .resizable(resizingMode: .stretch)
//                                        .aspectRatio(contentMode: .fit)
//                                }
//
//                                NavigationLink(destination: ProfilePage()) {
//                                    Image("profileimage")
//                                        .resizable(resizingMode: .stretch)
//                                        .aspectRatio(contentMode:
//                                                .fit)
//                                }
//                            }
//
//                        }
//
//
//
//
//                    }
//
//                }
//
//            }
//        }
//    }
//    struct ArchivePage_Previews: PreviewProvider {
//        static var previews: some View {
//            ArchivePage()
//
//        }
//    }
//
//}
import SwiftUI

struct ArchivePage: View {
    // @Environment(\.managedObjectContext) var context
    // @State var journalText: String
    //@State var journalDays: [JournalDay] = []
    @Binding var journalDays: [JournalDay]
    var body: some View {
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
            VStack {
                Text("Archive")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 162/255, green: 193/255, blue: 172/255, opacity: 1.0))
                
                List {
                    
                     //   Color(red: (248/255), green: (248/255), blue: (243/255))
                     //       .ignoresSafeArea()
                        ForEach (journalDays) {
                            journalDay in Text(journalDay.journalText)
                                .listRowBackground(Color(red: (248/255), green: (248/255), blue: (243/255)))
                        }
                    
                    
                }
                .listStyle(.plain)
                 //   .background(Color(red: (248/255), green: (248/255), blue: (243/255)))
            //.listRowBackground(Color(red: (248/255), green: (248/255), blue: (243/255)))
            //.scrollContentBackground(.hidden)
                
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        HStack (spacing:40){
                            NavigationLink(destination:SubmitContentView (journalText:"")) {
                                Image("houseicon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .navigationBarBackButtonHidden(true)
                            }
                            NavigationLink(destination: ArchivePage(journalDays:$journalDays)) {
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
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                }
            }
            .padding(.all)
            
        }
    }
}
    struct ArchivePage_Previews: PreviewProvider {
        static var previews: some View {
            ArchivePage(journalDays: .constant([]))
        }
    }
