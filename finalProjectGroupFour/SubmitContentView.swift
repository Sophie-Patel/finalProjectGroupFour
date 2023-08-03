//
//  SubmitContentView.swift
//  finalProjectGroupFour
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct SubmitContentView: View {
    //@Environment(\.managedObjectContext) var context
    @State var journalText: String
    //@Binding var journalDays: [JournalDay]
    @State var journalDays: [JournalDay] = []
    
    var body: some View {
        ZStack {
            Color(red: (248/255), green: (248/255), blue: (243/255))
                .ignoresSafeArea()
            VStack {
                Text("Home")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 162/255, green: 193/255, blue: 172/255))
//                Text("What are you most grateful for today?")
//                    .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
//                    .font(.system(size: 30))

                
                Spacer()
               
                
                
                NewDayView(journalDays: $journalDays)
                
                
                //            NavigationStack {
                //                Text("")
                //                NavigationLink(destination: ArchivePage(journalDays: $journalDays)) {
                //                 Text("Archive")
                //              }
                
                //      ArchivePage( journalDays: $journalDays)
            }
            
            //
            //        }.padding()
            
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    HStack (spacing:40) {
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
    
    struct SubmitContentView_Previews: PreviewProvider {
        static var previews: some View {
            SubmitContentView(journalText: " ")
        }
    }

