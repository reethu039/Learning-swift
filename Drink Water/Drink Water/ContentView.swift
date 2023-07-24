//
//  ContentView.swift
//  Drink Water
//
//  Created by Reethu RG Thota on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var time = 60.0
    @State var play_sounds = true
   
    
    var body: some View {
        
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack()
            {
                Text("Customise your schedule")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 100.0)
                    
                VStack(spacing: -9.0)
                {
                    HStack
                    {
                        Text("Adjust Duration")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                        
                        Slider(value: $time, in: 30...120, step: 30) {
                            Text("time")
                        } minimumValueLabel: {
                            Text("30")
                        } maximumValueLabel: {
                            Text("120")
                        }
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    }
                    .padding()
                    
                    
                    HStack
                    {
                        Spacer()
                        
                        Text("\(Int(time)) minutes")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hue: 0.577, saturation: 0.95, brightness: 0.404))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 39.0)
                }
                .padding(.bottom, 50.0)
                
                HStack
                {
                    Text("Enable sounds")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.leading, 15.0)
                   
                    Toggle(isOn: $play_sounds)
                    {
                        
                    }
                    .padding(.trailing, 200.0)
   
                }
            }
        }
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            
            if let error = error {
                // Handle the error here.
            }
            
            // Enable or disable features based on the authorization.
        }

        
        
    }
}

    func show_slider()
    {
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

