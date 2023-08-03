//
//  timerview.swift
//  finalProjectGroupFour
//
//  Created by scholar on 03/08/2023.
//
import SwiftUI

struct timerview: View {
    @State var countdownTimer = 30
    @State var timerRunning = true
    let timer =  Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var prompt = [" What's your favorite way to spend a day off?",
                  
                "  What type of music are you into? ",

                 " What was the best vacation you ever took and why?",

                  "Where's the next place on your travel bucket list and why?",

                  " What are your hobbies, and how did you get into them?",

                  " What was your favorite age growing up?",

                  " What was the last thing you read?",

                  " Would you say you're more of an extrovert or an introvert?",

                  " What was the last TV show you binge-watched?",

                 "Are you into podcasts or do you only listen to music?",

                  "Do you have a favorite holiday? Why or why not? ",

                  "If you could only eat one food for the rest of your life, what would it be?",

                  " Do you like going to the movies or prefer watching at home?",

                 "What's your go-to guilty pleasure?"]

    var randomPrompt = Int.random(in: 0..<15)
    
        
      @State private var newPrompt = ""
       

    
    
//    randomThing(index: randomPrompt)
    var body: some View {
        
        
        VStack {
            
            if countdownTimer == 0 {
                Text("Today's prompt is \(prompt[randomPrompt])")
                
            }
                
                VStack{
                    Text("\(countdownTimer)")
                        .onReceive(timer) { _ in
                            if countdownTimer > 0 && timerRunning {
                                countdownTimer -= 1
                            } else {
                                timerRunning = false
                            }
                            
                        }
                        .font(.system(size: 80,weight: .bold ))
                        .opacity(0.80)
                    Text(newPrompt)
                }
                
            }
            
            
            

        
        }
        


        
    }
    
    struct timerview_Previews: PreviewProvider {
        static var previews: some View {
            timerview()
        }
    }
