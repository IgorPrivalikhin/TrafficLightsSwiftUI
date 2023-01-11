//
//  CircleColorView.swift
//  TrafficLightsSwiftUI
//
//  Created by Анастасия Булдакова on 10.01.2023.
//

import SwiftUI

struct CircleColorView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 140, height: 140, alignment: .center)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .padding()
    }
}


struct CircleColorView_Previews: PreviewProvider {
    static var previews: some View {
        CircleColorView(color: .red)
        
    }
}
