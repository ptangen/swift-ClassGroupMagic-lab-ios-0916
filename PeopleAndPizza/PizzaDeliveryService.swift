//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Paul Tangen on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    // A Coordinate called location that represents where the pizza delivery service is located. An Int called pizzasAvailable. This should be a variable. It represents the service's inventory.
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location:Coordinate){
        self.location = location
        self.pizzasAvailable = 10
    }
    
    // Create a method called isInRange(). This method takes one parameter, a Coordinate called destination, and returns true if the destination is no more than 5000 kilometers from the pizza delivery service.
    
    func isInRange(destination:Coordinate) -> Bool {
        if  destination.distanceTo(coordinate: <#T##Coordinate#>) <= 5000 {
            return true
        } else {
            return false
        }
    }
    
    // Create a method called deliverPizzaTo(). This method takes one parameter, a Coordinate called destination. If the destination is in range of the pizza delivery service, it subtracts one from the number of pizzas available and returns true. Otherwise, it simply returns false. If there are no pizzas available, it also returns false.
    
    func deliverPizzaTo(destination:Coordinate) -> Bool {
        if self.isInRange(destination:destination){
            self.pizzasAvailable -= 1
            return true
        } else {
            return false
        }
        
    }
    
}
