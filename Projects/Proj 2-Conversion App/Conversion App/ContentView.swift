//
//  ContentView.swift
//  Conversion App
//
//  Created by Ang Jun Ray on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var TypeConversion = 2
    @State private var ConvertTo = 3
    var Conversions = ["Seconds", "Minutes", "Hours", "Days", "Months"]
    @State private var Input = ""
    var ConversionValue:[Double] = [1, 60, 3600, 86400, 2592000]
    var convertedValue:Double {
        let RealInput = Double(Input) ?? 0
        var ComputedValue:Double = 1
        ComputedValue *= ConversionValue[TypeConversion]
        ComputedValue /= ConversionValue[ConvertTo]
        ComputedValue *= RealInput
        return ComputedValue
    }
 
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("input")){
                    Picker("Convert From:", selection: $TypeConversion){
                        ForEach(0..<Conversions.count){
                            Text("\(self.Conversions[$0])")
                        }
                    }
                    Picker("Convert To:", selection: $ConvertTo){
                        ForEach(0..<Conversions.count){
                            Text("\(self.Conversions[$0])")
                        }
                    }
                    TextField("Ur input:", text: $Input)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Outcome")){
                    let output = round(convertedValue)
                    Text("Result: \(output)")
                }
            }
            .navigationBarTitle("Conversion App")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
