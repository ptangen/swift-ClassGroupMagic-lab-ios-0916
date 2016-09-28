//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Paul Tangen on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String //A String called firstName
    var lastName: String //A String called lastName
    var home: Coordinate //A Coordinate called home
    var isHungury: Bool //A Bool called isHungry
    
    
    // Create an initializer that takes three parameters: a String called firstName, a String called lastName, and a Coordinate called home. These parameters should be assigned to the appropriate properties. isHungry should initially be set to true.
    
    init(firstName: String, lastName: String, home: Coordinate){
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        self.isHungury = true
    }
    
    // Create a method called eatPizzaFrom(). This method takes one parameter, a PizzaDeliveryService called service that represents where the pizza is being ordered from. If the person is hungry and the service is in range of the person's home, then the isHungry property should be set to false and the method should return true. If the person is not hungry or the service is not in range of the person's home, the method should simply return false.
    
    func eatPizzaFrom(service:PizzaDeliveryService) -> Bool {
        if (self.isHungury && service.isInRange(destination: self.home)){
            self.isHungury = false
            return true
        } else {
            return false
        }
    }
}
