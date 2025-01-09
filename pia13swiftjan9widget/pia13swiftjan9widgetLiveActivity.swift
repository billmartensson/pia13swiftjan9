//
//  pia13swiftjan9widgetLiveActivity.swift
//  pia13swiftjan9widget
//
//  Created by BillU on 2025-01-09.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct pia13swiftjan9widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct pia13swiftjan9widgetLiveActivity: Widget {
    
    
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: pia13swiftjan9widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension pia13swiftjan9widgetAttributes {
    fileprivate static var preview: pia13swiftjan9widgetAttributes {
        pia13swiftjan9widgetAttributes(name: "World")
    }
}

extension pia13swiftjan9widgetAttributes.ContentState {
    fileprivate static var smiley: pia13swiftjan9widgetAttributes.ContentState {
        pia13swiftjan9widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: pia13swiftjan9widgetAttributes.ContentState {
         pia13swiftjan9widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: pia13swiftjan9widgetAttributes.preview) {
   pia13swiftjan9widgetLiveActivity()
} contentStates: {
    pia13swiftjan9widgetAttributes.ContentState.smiley
    pia13swiftjan9widgetAttributes.ContentState.starEyes
}
