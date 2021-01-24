//
//  ContentView.swift
//  MoonShot
//
//  Created by Ang Jun Ray on 24/1/21.
//

import SwiftUI

struct CustomText: View {
    var text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        /*
        VStack{
            GeometryReader{geo in
                Image("Nice")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
 */
        /*
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
 */
        //acts differently from scrollview creates lazily
        /*
        List{
            ForEach(0..<100){
                CustomText("Item \($0)")
                    .font(.title)
            }
        }
 */
/*
        NavigationView{
            List(0..<100){ row in
                NavigationLink(destination: Text("Detial \(row)")){
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
 */
        Button("Decode JSON"){
            let input =  """
            {
                "name": "Lol",
                "adress":{
                    "street":"555,lol",
                    "city":"Lol",
                }
            }
            """
            //more code
            struct User: Codable{
                var name: String
                var address: Address
            }
            struct Address: Codable{
                var street: String
                var city: String
            }
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data){
                print(user.address.street)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
