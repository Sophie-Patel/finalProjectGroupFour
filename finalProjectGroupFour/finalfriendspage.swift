import SwiftUI

struct finalfriendspage: View {
    @Binding var journalDays: [JournalDay]
    var body: some View {
        let greenColour : Color = Color(red: (248/255), green: (248/255), blue: (243/255))
        ZStack {
        greenColour
                .ignoresSafeArea()
            
            
            
            // rgb(178, 172, 136)--- green
            
            //rgb(255,240,219) --- beige
            NavigationStack {
                VStack {
                    VStack(alignment: .center) {
                        Text(" ")
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            HStack (spacing:40){
                                NavigationLink(destination: SubmitContentView (journalText:"")) {
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
                                
                                NavigationLink(destination: finalfriendspage(journalDays:.constant([]))) {
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
                    
                    
                    HStack {
                        VStack {
                            Text("Friends")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(Color(red: 162/255, green: 193/255, blue: 172/255))
                            
                            
                            ScrollView {
                                VStack {
                                    
                                    Text("Anonymous")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                    Group{
                                        HStack{
                                            Text("I am grateful for my parents!")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                            
                                        }
                                        Divider()
                                        
                                        Text("Anonymous")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        HStack{
                                            Text("I am grateful for my health and safety")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        }
                                        
                                        Divider()
                                        
                                        Text("Anonymous")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        HStack{
                                            Text("I'm grateful for coding")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                            
                                        }
                                        Divider()
                                    }
                                    Group{
                                        Text("Anonymous")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        HStack{
                                            Text("I'm grateful for kode with klossy!")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                            
                                        }
                                        
                                        Divider()
                                        Text("Anonymous")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        HStack{
                                            
                                            Text("I'm really feeling grateful for the ability to code, and learn at Kode With Klossy")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                            
                                        }
                                        Divider()
                                        
                                        Text("Anonymous")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        HStack{
                                            Text("I am grateful for technology and education")
                                                .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                                        }
                                        
                                    }
                                }
                                
                                
                            }
                        }.padding()
                    }
                    
                    .scrollContentBackground(.hidden)
                    .background(greenColour)
                    
                    
                }
            }
        }
    }
}

            
            struct finalfriendspage_Previews: PreviewProvider {
                static var previews: some View {
                    finalfriendspage(journalDays:.constant([]))
                }
            }

