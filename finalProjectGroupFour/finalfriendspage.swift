//
//  finalfriendspage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 02/08/2023.
//
import SwiftUI

struct finalfriendspage: View {
    var body: some View {
        
        let greenColour : Color = Color(red: (255/255), green: (240/255), blue: (219/255))
        // rgb(178, 172, 136)--- green
        
        //rgb(255,240,219) --- beige
        
        
        ZStack {
            Color(red: (255/255), green: (240/255), blue: (219/255))
                .ignoresSafeArea()
            NavigationStack {
                VStack {
                    VStack(alignment: .center) {
                        Text(" ")
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            HStack {
                                NavigationLink(destination: HomePage()) {
                                    Image("homeimage ") 
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink(destination: ArchivePage()) {
                                    Image("archiveimage")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                                NavigationLink(destination: finalfriendspage()) {
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
                    
                    VStack {
                        List(0..<1) { i in
                            Image("diemlogo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                            
                            
                            Text("anonomous user 234462")
                            HStack{
                                Text("I'm so grateful for learning, my family and my health")
                                
                            }
                            
                            
                            Text("anonomous user 49583")
                            HStack{
                                Text("I'm so grateful to be at Kode with Klossy today ")
                                
                            }
                            
                            Text("anonomous user 35342")
                            HStack{
                                                    Text("I'm really feeling grateful for the ability to code, and learn at Kode With Klossy")
                            }
                            
                            Text("anonymous user 12345")
                            HStack {
                                Text("I am grateful for my family and having somewhere to live")
                            }
                            
                           
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(greenColour)
                }
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

