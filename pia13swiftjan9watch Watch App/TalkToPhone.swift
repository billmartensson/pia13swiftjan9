//
//  TalkToPhone.swift
//  pia13swiftjan9watch Watch App
//
//  Created by BillU on 2025-01-09.
//

import Foundation
import WatchConnectivity

@Observable class TalkToPhone : NSObject, WCSessionDelegate {
    
    var currentMessage = ""
    
    func startConnect() {
        if (WCSession.isSupported()) {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
    
    func sendMessage(message: String) {
        WCSession.default.sendMessage(["message": message], replyHandler: nil)
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: (any Error)?) {
        
    }
        
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        
        currentMessage = message["message"] as! String
        
    }
    
}
