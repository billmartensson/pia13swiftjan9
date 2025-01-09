//
//  ContentView.swift
//  pia13swiftjan9watch Watch App
//
//  Created by BillU on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var talk = TalkToPhone()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Hello, world!")
                
                Text(talk.currentMessage)
                
                Text(FancyCode().funtext())
                
                
                Button("Send message!!") {
                    talk.sendMessage(message: "Hej hej")
                }
                
                
                FancyGalleryView()
                
                NavigationLink(destination: Text("Mera text"), label: {
                    Text("Läs mer...")
                })
                
                Text("Hej")
                Text("Hej")
                Text("Hej")
                Text("Hej")
                Text("Hej")
            }
            .padding()
        }
        .onAppear() {
            talk.startConnect()
        }

    }
}

#Preview {
    ContentView()
}
