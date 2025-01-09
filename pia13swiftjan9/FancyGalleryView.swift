//
//  FancyGalleryView.swift
//  pia13swiftjan9
//
//  Created by BillU on 2025-01-09.
//

import SwiftUI

struct FancyGalleryView: View {
    var body: some View {
        
        ViewThatFits {
            HStack {
                FancyBoxView(boxtext: "A")
                FancyBoxView(boxtext: "B")
                FancyBoxView(boxtext: "C")
            }

            VStack {
                FancyBoxView(boxtext: "A")
                FancyBoxView(boxtext: "B")
                FancyBoxView(boxtext: "C")
            }

        }
        
        
    }
}

#Preview {
    FancyGalleryView()
}
