//
//  CircleColorView.swift
//  TrafficLightsSwiftUI
//
//  Created by Анастасия Булдакова on 10.01.2023.
//

import SwiftUI

 struct ColorCircleView: View {
     
     let color: Color
     let opacity: Double
     
     var body: some View {
         Circle()
             .frame(width: 100, height: 100)
             .foregroundColor(color)
             .opacity(opacity) // прозрачность
             .overlay(Circle().stroke(Color.white, lineWidth: 4)) // окантовка
     }
 }

 struct ColorCircleView_Previews: PreviewProvider {
     static var previews: some View {
         ColorCircleView(color: .red, opacity: 1)
     }
 }

