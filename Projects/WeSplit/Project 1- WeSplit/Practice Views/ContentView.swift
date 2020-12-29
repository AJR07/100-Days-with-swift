//
//  ContentView.swift
//  WeSplit
//
//  Created by Ang Jun Ray on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    @State private var name = ""
    @State var tapcount = 0 //@state allows swift to give ur code permission to modify this variable since it manages states
    var body: some View {
        Picker("Select your student", selection: $selectedStudent){
            ForEach(0 ..< students.count){
                Text(self.students[$0])
            }
        }
        Form{
            ForEach(0..<100){
                Text("Row \($0)")
            }
        }
        /*
        Form{
            TextField("Enter your name", text:$name)//$ tells swift to read the value of property and write it back so nothing should happen

            Text("Your name is \(name)") //no 2 way binding, cuz no reading it back
        }
 */
        /*
        Button("Tap Count \(tapcount)"){
            self.tapcount += 1
        }
 */
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
