//
//  Misson.swift
//  MoonShot
//
//  Created by Ang Jun Ray on 27/1/21.
//

import Foundation




struct Mission: Codable, Identifiable{
    struct CrewRoles: Codable{
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRoles]
    let description: String
    
    var displayName: String{
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String{
        if let launchDate = launchDate{
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        }else{
            return "N/A"
        }
    }
}
