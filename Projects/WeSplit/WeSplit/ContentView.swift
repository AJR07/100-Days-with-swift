//
//  ContentView.swift
//  WeSplit
//
//  Created by Ang Jun Ray on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var tapcount = 0 //@state allows swift to give ur code permission to modify this variable since it manages states
    var body: some View {
        Button("Tap Count \(tapcount)"){
            self.tapcount += 1
        }
        /*
        NavigationView{
            Form{
                Group{
                    Text("Hello, world!")
                        .padding()
                    Text("LOL")
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                }
                Section{
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                }
            }
            .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
 */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
