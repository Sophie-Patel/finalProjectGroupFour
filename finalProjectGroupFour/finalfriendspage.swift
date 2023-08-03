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
                            HStack {
                                NavigationLink(destination: SubmitContentView (journalText:"")) {
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
                                
                                NavigationLink(destination: finalfriendspage(journalDays:.constant([]))) {
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
                    
                    
                    HStack {
                        VStack {
                            Text("Friends page")
                                .font(.largeTitle)
                            
                            
                            ScrollView {
                                VStack {
                                    
                                    Text("anonymous user")
                                    Group{
                                        HStack{
                                            Text("i love kode with klossy!!!! Im really happy i can code now  ")
                                            
                                        }
                                        Divider()
                                        
                                        Text("anonymous user 364764")
                                        HStack{
                                            Text("I am grateful for my health and safety")
                                        }
                                        
                                        Divider()
                                        
                                        Text("anonomous user 234462")
                                        HStack{
                                            Text("i love kode with klossy!!!! Im really happy i can code now  ")
                                            
                                        }
                                        Divider()
                                    }
                                    Group{
                                        Text("anonomous user 49583")
                                        HStack{
                                            Text("i love kode with klossy!!!! i loveeee cake! ")
                                            
                                        }
                                        
                                        Divider()
                                        Text("anonomous user 35342")
                                        HStack{
                                            
                                            Text("I'm really feeling grateful for the ability to code, and learn at Kode With Klossy")
                                            
                                        }
                                        Divider()
                                        
                                        Text("anonymous user 45764")
                                        HStack{
                                            Text("I am grateful for technology and education")
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

