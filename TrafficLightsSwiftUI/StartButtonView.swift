//
//  StartButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Анастасия Булдакова on 13.01.2023.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .padding() // для текста внутри кнопки
        .frame(width: 200, height: 60) // рамка
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20) // скругленный прямоугольник
                .stroke(Color.white, lineWidth: 4) // окантовка
        )
    }
}

struct StartBottonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}

