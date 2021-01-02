//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ang Jun Ray on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        //VStack: Place one above another
        //HStack: Place things side by side horisontally
        //ZSatck arranges view by depth, mking things overlap
        /*
        LinearGradient(gradient: Gradient(colors:[.white, .black]), startPoint: .top, endPoint: .bottom)
        //Color.red
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        Button(action: {
            print("Button was tapped!")
        }){
            HStack(spacing: 10){
                Image("pencil")
                Text("Edit")
            }
        }
 */
        Button("Show Alert") {
            self.showingAlert = true
        }
        
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Hello Swift UI"), message: Text("This is some detial message"), dismissButton: .default(Text("OK")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
