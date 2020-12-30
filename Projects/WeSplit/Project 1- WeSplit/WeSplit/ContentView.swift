//
//  ContentView.swift
//  WeSplit
//
//  Created by Ang Jun Ray on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = "" //@State automatically watches for changes in the value
    @State private var tipPercentage = 2
    @State private var numberOfPeople = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tiplSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tiplValue = orderAmount / 100 * tiplSelection
        let grandTotal = orderAmount + tiplValue
        let amountPerPerson = grandTotal / peopleCount
        
        return peopleCount
    }
    var body: some View {
        NavigationView{
            
            Form{
                Section{
                    TextField("Amount", text: $checkAmount)// as the iser types, the property will be updated
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2 ..< 100){
                            Text("\($0) people")
                        }
                    }
                }
                Section(header:Text("How much tip do you want to leave?")){
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(0..<tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("$\(totalPerPerson, specifier: "0.2f")")
                }
            }
            .navigationBarTitle("WeSplit")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
