//
//  JournalDay.swift
//  finalProjectGroupFour
//
//  Created by scholar on 03/08/2023.
//

import Foundation

class JournalDay: Identifiable {
    var id = UUID()
    var journalText = " "
    
    
    init(journalText: String) {
        self.journalText = journalText
    }
}
