//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Paul Tangen on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Tiger {
    var name: String //A String property called name
    var isHungry: Bool = true //A Bool property called isHungry
    
    init(name: String) {
        self.name = name
    }
    
    // Implement a method called eat(). This method takes no parameters. It should change isHungry to false.
    
    func eat() {
        self.isHungry = false
    }
}
