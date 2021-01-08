//
//  ContentView.swift
//  BetterRest
//
//  Created by Ang Jun Ray on 8/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeup = Date()
    var hello = ["Lmao", "Lol"]
    
    var body: some View {
        
/*
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: Date())
 */
        /*
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25){
            Text("\(sleepAmount, specifier: "%g") hours")
        }
 */
        /*
        Form{
            DatePicker("Please enter a date",selection: $wakeup, in: Date()..., displayedComponents: .hourAndMinute)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
        }
 */
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
