//
//  timerview.swift
//  finalProjectGroupFour
//
//  Created by scholar on 03/08/2023.
//
import SwiftUI

struct timerview: View {
    @State var countdownTimer = 5
    @State var timerRunning = true
    let timer =  Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var prompt = [" what's your favorite way to spend a day off?",
                  
                " what type of music are you into? ",

                 "what was the best vacation you ever took and why?",

                  "where's the next place on your travel bucket list and why?",

                  "what are your hobbies, and how did you get into them?",

                  " what was your favorite age growing up?",

                  " what was the last thing you read?",

                  " would you say you're more of an extrovert or an introvert?",

                  " what was the last TV show you binge-watched?",

                 "are you into podcasts or do you only listen to music?",

                  "do you have a favorite holiday? Why or why not? ",

                  "if you could only eat one food for the rest of your life, what would it be?",

                  " do you like going to the movies or prefer watching at home?",

                 "what's your go-to guilty pleasure?"]

    var randomPrompt = Int.random(in: 0..<14)
    
        
      @State private var newPrompt = ""
       

    
    
//    randomThing(index: randomPrompt)
    var body: some View {
        
        
        VStack {
            
            if countdownTimer == 0 {
                Text("Today's prompt is \(prompt[randomPrompt])")
                
            } else {
                Text(" ggg")
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
