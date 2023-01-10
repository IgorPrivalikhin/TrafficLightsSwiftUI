//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Анастасия Булдакова on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var CurrentValueLabel = "START"
    
    @State var red = 0.2
    @State var yellow = 0.2
    @State var green = 0.2
    
    var lightOn: Double = 1
    var lightOff = 0.2
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                CircleColorView(color: .red)
                    .opacity(red)
                CircleColorView(color: .yellow)
                    .opacity(yellow)
                CircleColorView(color: .green)
                    .opacity(green)
                Spacer()
                
                Button(action: { if CurrentValueLabel == "START" { CurrentValueLabel = "NEXT" }

                    switch currentLight {
                    case .red:
                        red = lightOn
                        green = lightOff
                        currentLight = .yellow
                    case .yellow:
                        red = lightOff
                        yellow = lightOn
                        currentLight = .green
                    case .green:
                        green = lightOn
                        yellow = lightOff
                        currentLight = .red
                    }
                    
                }) {
                    Text(CurrentValueLabel)
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                }
            }
            .padding()
        }
        }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
