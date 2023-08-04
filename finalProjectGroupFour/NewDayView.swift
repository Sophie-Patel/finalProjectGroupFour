//
//  NewDayView.swift
//  finalProjectGroupFour
//
//  Created by scholar on 03/08/2023.
//
import SwiftUI

struct NewDayView:
    View {
    @State var journalText: String = ""
   // @Binding var journalDays: [JournalDay]
   @Binding var journalDays: [JournalDay]
    
    var body: some View {
        VStack {
            TextField("Start journaling...", text: $journalText, axis: .vertical)
                .padding()
                .background(Color(red: 162/255, green: 193/255, blue: 172/255, opacity: 1.0))
                .cornerRadius(15)
                .padding()
            
            Button(action: {
                self.journalDays.append(JournalDay(journalText: self.journalText))
                self.journalText = ""

                print(journalText)
                print(journalDays.map {$0.journalText})
            }) {
                Text("Submit")
                    .foregroundColor(Color(red: 0.262, green: 0.344, blue: 0.282))
                    .font(.title2)
            }
        }
        .padding(.all)
    }
//     func addJournal(journalText: String) {
//        let newJournal = JournalDay(journalText: journalText)
//        journalDays.append(newJournal)
//    }
}

struct NewDayView_Previews: PreviewProvider {
    @State static var data: [JournalDay] = [
    JournalDay(journalText: "hey")]
    
    static var previews: some View {
        NewDayView(journalDays: $data)
    }
}










