//
//  ContentView.swift
//  MoonShot
//
//  Created by Ang Jun Ray on 24/1/21.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        NavigationView{
            List(missions){ mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts)){
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    VStack(alignment: .leading){
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.formattedLaunchDate)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
