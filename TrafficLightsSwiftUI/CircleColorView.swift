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
            .frame(width: 110, height: 110, alignment: .center)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}


struct CircleColorView_Previews: PreviewProvider {
    static var previews: some View {
        CircleColorView(color: .red)
        
    }
}
