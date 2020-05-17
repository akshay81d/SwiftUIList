//
//  Monument.swift
//  SwiftUIList
//
//  Created by Akshay Dochania on 09/05/20.
//  Copyright © 2020 app-developerz. All rights reserved.
//

import Foundation

struct Monument {
    let name: String
    let imageURL: String
    let year: Double
    
}

extension Monument {
    static func all() -> [Monument] {
        return [
            Monument(name: "Taj Mahal", imageURL: "Taj", year: 1632),
            Monument(name: "Qutub Minar", imageURL: "Qutub", year: 1193),
            Monument(name: "Lotus Temple", imageURL: "Lotus", year: 1986),
            Monument(name: "India Gate", imageURL: "Gate", year: 1931)
        ]
    }
}
