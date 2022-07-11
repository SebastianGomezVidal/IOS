//
//  ContentView.swift
//  War Card Project 1
//
//  Created by Juan Gomez on 9/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()   
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack (alignment: .center, spacing: 30){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update cards
                    playerCard="card" + String(playerRand)
                    cpuCard="card" + String(cpuRand)
                    
                    //Update scores
                    if (playerRand > cpuRand){ playerScore+=1 }
                    else if (cpuRand > playerRand){ cpuScore+=1 }
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
