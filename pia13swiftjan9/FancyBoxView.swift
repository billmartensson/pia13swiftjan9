//
//  FancyBoxView.swift
//  pia13swiftjan9
//
//  Created by BillU on 2025-01-09.
//

import SwiftUI

struct FancyBoxView: View {
    
    @State var boxtext = "BOX"
    
    var body: some View {
        VStack {
            Text(boxtext)
        }
        .frame(width: 70, height: 70)
        .background(Color.red)
    }
}

#Preview {
    FancyBoxView()
}
