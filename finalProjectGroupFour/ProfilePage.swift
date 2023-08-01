//
//  ProfilePage.swift
//  finalProjectGroupFour
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        Text("profile")
        Image("lovelace")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
        
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
