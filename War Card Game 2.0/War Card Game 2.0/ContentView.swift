//
//  ContentView.swift
//  War Card Game
//
//  Created by Reethu RG Thota on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var rightCard = "back"
    @State var leftCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var rVal = 0
    @State var lVal = 0
    @State var val:Bool = true
    
    
    var body: some View {
        
        ZStack
        {
            Image("background-plain")
            
            VStack
            {
                Image("logo")
                
                HStack
                {
                    if val == true {
                        Button {
                            rVal = 1
                                deal()
                        } label: {
                            Image(rightCard)
                        }
                    }
                    else{
                        Image(rightCard)
                    }
                    
                    Spacer()
                    if val == true {
                        Button {
                            lVal = 1
                                deal()
                        } label: {
                            Image(leftCard)
                        }
                    }
                    else{
                        Image(leftCard)
                    }
                }
                .padding(.horizontal, 55.0)
                .padding(.vertical, 38.0)
                
                Button
                {
                    back()
                }
                label: {
                    Image("button")
                }

                HStack
                {
                    VStack
                    {
                        Text("Player")
                            .padding(15)
                        Text(String(playerScore))
                            .font(.title)
                    }
                    .padding(.horizontal, 50)
                    .foregroundColor(Color.white)
                    
                    VStack
                    {
                        Text("CPU")
                            .padding(15)
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    .padding(.horizontal, 50)
                    .foregroundColor(Color.white)
                }
                .padding(.vertical, 30.0)
            }
        }
    }
    
    func deal()
    {
        // Randomise the right card
        let rightCardValue = Int.random(in: 2...14)
        rightCard = "card" + String(rightCardValue)
        
        //Randomise the left card
        let leftCardValue = Int.random(in: 2...14)
        leftCard = "card" + String(leftCardValue)
        
        change(rightCardValue, leftCardValue)
    }
    
    func change(_ rightCardValue:Int , _ leftCardValue:Int)
    {
        //Update the score
        if rVal == 1
        {
            if rightCardValue > leftCardValue
            {
                playerScore += 1
                val = false
            }
            else if leftCardValue > rightCardValue
            {
                cpuScore += 1
                val = false
            }
        }
        else if lVal == 1
        {
            if leftCardValue > rightCardValue
            {
                playerScore += 1
                val = false
                
            }
            else if rightCardValue > leftCardValue
            {
                cpuScore += 1
                val = false
                
            }
        }
        
    }
    
    func back()
    {
        rightCard = "back"
        leftCard = "back"
        rVal = 0
        lVal = 0
        val = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
