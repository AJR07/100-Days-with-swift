//
//  ContentView.swift
//  Views and Modifiers
//
//  Created by Ang Jun Ray on 5/1/21.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
        
    }
}

struct Title: ViewModifier { //our own custom modifier
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}


struct ContentView: View {
    /*
     let motto1 = Text("Draco dormiens")//defines variables as views/properties to be used
     let motto2 = Text("nunquam titillandus")
     */
    var body: some View { //some means a type of ciew (type)
        
        /*
         Text("Hello, world!")
         .frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(Color.red)
         .edgesIgnoringSafeArea(.all)
         */
        /*
         Button("Hello World"){
         print(type(of: self.body))
         }
         .frame(width:200, height: 200)
         .background(Color.red)
         */
        /*
         VStack{
         Text("Hello World")
         .font(.body) //pverrites the font modifier on the stack view
         Text("Hello World")
         Text("Hello World")
         Text("Hello World")
         
         }
         .font(.title)
         */
        /*
         VStack {
         motto1
         .foregroundColor(.red)
         motto2
         .foregroundColor(.blue)
         }
         */
        /*
         VStack(spacing: 10) {
         CapsuleText(text: "First") //using structs  in views
         CapsuleText(text: "Second")
         }
         */
        /*
         Text("Hello World")
         Color.blue
         .frame(width: 300, height: 300)
         .watermarked(with: "Hacking with swift")
         */
        GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
