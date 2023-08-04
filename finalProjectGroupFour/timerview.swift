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
                  
                "what do you want to change in your life? ",

                 "what was the best thing that ever happened to you?",

                  "where's the next on your bucket list and why?",

                  "what are your hobbies, and how did you get into them?",

                  "what was your favorite age growing up?",

                  "who has had the biggest influence on you?",

                  "would you say you're more of an extrovert or an introvert?",

                  "what do you love about yourself?",

                 "what have you learnt today?",

                  "what was the most enjoyable thing you did today? ",

                  "what do you want to achieve today?",

                  "what challenges do you think you'll face today?",

                 "what did you appreciate the most today"]

    var randomPrompt = Int.random(in: 0..<14)
    
        
      @State private var newPrompt = ""
       

    
    
//    randomThing(index: randomPrompt)
    var body: some View {
        
        
        VStack {
            
            if countdownTimer == 0 {
                Text("Today's prompt is: \(prompt[randomPrompt])")
                    .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                    .multilineTextAlignment(.center)
                    .font(.title)
                
                
            } else {
                Text("What three things are you most grateful for today? ")
                    .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                    .multilineTextAlignment(.center)
                    .font(.title)
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
