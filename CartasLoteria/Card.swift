//
//  Card.swift
//  CartasLoteria
//
//  Created by TheLupillo on 5/18/20.
//  Copyright © 2020 TheLupillo. All rights reserved.
//

import Foundation

struct Card {
    var number: Int
    var name: String
    var image: String
    
    init(number: Int, name: String, image: String) {
        self.number = number
        self.name = name
        self.image = image
    }
    
    init(number: Int, name: String) {
        self.number = number
        self.name = name
        self.image = "default"
    }
}
