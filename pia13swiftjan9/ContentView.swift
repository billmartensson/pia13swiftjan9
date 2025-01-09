//
//  ContentView.swift
//  pia13swiftjan9
//
//  Created by BillU on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var talk = TalkToWatch()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text(talk.currentMessage)
            
            Text(FancyCode().funtext())
            
            Button("Send message!!") {
                talk.sendMessage(message: "Tjena")
            }
            
            FancyGalleryView()
        }
        .padding()
        .onAppear() {
            talk.startConnect()
        }
    }
}

#Preview {
    ContentView()
}
