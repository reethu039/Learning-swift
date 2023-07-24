//
//  ContentView.swift
//  War Card Game
//
//  Created by Reethu RG Thota on 05/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card14"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack
        {
            Image("background-plain")
            
            VStack
            {
                Image("logo")
                
                HStack
                {
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                }
                .padding(.horizontal, 55.0)
                .padding(.vertical, 38.0)
                
                Button
                {
                    deal()
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
        // Randomise the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomise the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the score
        if playerCardValue > cpuCardValue
        {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue
        {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
