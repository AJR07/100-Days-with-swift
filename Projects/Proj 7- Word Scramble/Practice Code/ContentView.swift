//
//  ContentView.swift
//  WordScramble
//
//  Created by Ang Jun Ray on 11/1/21.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    var body: some View {
        /*
        List{
            Section(header: Text("Section 1")){
                Text("Static row 1")
                Text("static row 2")
            }
            Section(header: Text("Section 1")){
                Text("Static row 1")
                Text("static row 2")
            }
            Section(header: Text("Section 1")){
                Text("Static row 1")
                Text("static row 2")
            }
        }
        .listStyle(GroupedListStyle())
         OR
 */
        /*
        List(0..<5){
            Text("Dynamic view \($0)")
        }
        .listStyle(GroupedListStyle())
 */
        /*
        List {
            ForEach(people, id: \.self) {
                Text($0)
            }
        }
 */
        /*
        Text("Hello World")
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
            //we found the file
            if let fileContents = try?
            
        }
 */
        /*
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
 */
        /*
        let input = """
        a
        b
        c
        """
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
 */
        let word = "Swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count) //let obj-c understand how swift strings word
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")//obj-c get back the special value NS-not found as nil
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
