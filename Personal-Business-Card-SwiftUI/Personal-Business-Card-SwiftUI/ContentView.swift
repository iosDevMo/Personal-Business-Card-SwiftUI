//
//  ContentView.swift
//  Personal-Business-Card-SwiftUI
//
//  Created by mohamdan on 29/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Image("myPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.cyan, lineWidth: 5))
                
                Text("My Name")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Text("My Job")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 234 567 890", imageName: "phone.fill")
                InfoView(text: "address@email.com", imageName: "envelope.fill")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


