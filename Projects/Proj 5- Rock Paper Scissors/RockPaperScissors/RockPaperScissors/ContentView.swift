//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Ang Jun Ray on 7/1/21.
//

import SwiftUI

struct ContentView: View {
    var possiblemoves = ["Rock", "Paper", "Scissors"]
    @State private var WinOrLose = Bool.random()
    @State private var RandomChoice = Int.random(in: 0...2)
    @State private var selection:Int = 2
    @State private var Score = 0
    
    var PointAdd:Double{
        if (WinOrLose == true){
            if (selection == 1){
                //never completed cuz too lazy :(
            }
        }
    }
    var body: some View{
        NavigationView{
            VStack(spacing: 1){
                if WinOrLose{
                    Text("You have to: Win")
                        .padding()
                        .background(Color.red)
                }
                else{
                    Text("You have to: Lose")
                        .padding()
                        .background(Color.red)
                }
                Spacer()
                
                Text("Your current score: \(Score)")
                    .padding()
                    .background(Color.blue)
                
                Spacer()
                
                VStack{
                    ForEach(0 ..< 3){ number in
                        Button(action: {
                            selection = number
                        }) {
                            Text("\(possiblemoves[number])")
                                .padding()
                                .background(Color.green)
                                .font(.body)
                        }
                    }
                }
                .padding()
                .background(Color.yellow)
                
            }
        }
        navigationTitle("Rock Paper Scissors App")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
