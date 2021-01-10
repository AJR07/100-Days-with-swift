//
//  ContentView.swift
//  BetterRest
//
//  Created by Ang Jun Ray on 8/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var calculatedBedTime:String {
        return calculateBedTime()
    }
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("When do you want to wake up?")
                        .font(.headline)
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .datePickerStyle(WheelDatePickerStyle())
                }
                Section{
                    Text("Deisired amount of sleep")
                        .font(.headline)
                    
                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25){
                        Text("\(sleepAmount, specifier: "%g") hours")
                    }
                }
                
                Section{
                    
                    Text("Daily coffee intake")
                        .font(.headline)
                    
                    Picker("Amount of Cups:", selection: $coffeeAmount){
                        ForEach (1 ..< 25){j in
                            if j == 1{
                                Text("1 cup")
                            }else{
                                Text("\(j) cups")
                            }
                        }
                    }
                }
            }
            .navigationTitle("BetterRest")
            .navigationBarItems(trailing: Text("Your recommmended bed time  is \(calculateBedTime())"))
        }
    }
    
    
    static var defaultWakeTime: Date{
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }
    
    func calculateBedTime() -> String{
        let model = SleepCalculator()
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute  = (components.minute ?? 0) * 60
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        
        do{
            let prediction  = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            return formatter.string(from: sleepTime)
        }
        catch{
            return "Sorry, there was a problem calculating your bedtime."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
