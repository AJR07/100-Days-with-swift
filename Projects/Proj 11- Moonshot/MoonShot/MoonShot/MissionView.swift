//
//  MissionView.swift
//  MoonShot
//
//  Created by Ang Jun Ray on 29/1/21.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    var body: some View {
        GemoteryReader{ gemometry in
            ScrollView(.vertical){
                VStack{
                    Image(self.mission.image)
                }
            }
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        MissionView()
    }
}
