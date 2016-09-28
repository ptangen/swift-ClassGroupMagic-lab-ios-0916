//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Paul Tangen on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double //A Double called latitude
    var longitude: Double //Another Double called longitude
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    
    //A Bool called isInNorthernHemisphere. This returns true if the coordinate is in the Northern Hemisphere. (A coordinate is in the Northern Hemisphere if its latitude is positive.)
    var isInNorthernHemisphere: Bool {
        if self.latitude > 0 {
            return true
        } else {
            return false
        }
    }
    //A Bool called isInSoutherHemisphere. This returns true if the coordinate is in the Souther Hemisphere. (A coordinate is in the Souther Hemisphere if its latitude is negative.)
    var isInSoutherHemisphere: Bool {
        if self.latitude < 0 {
            return true
        } else {
            return false
        }
    }
    //A Bool called isInWesternHemisphere. This returns true if the coordinate is in the Western Hemisphere. (A coordinate is in the Western Hemisphere if its longitude is positive.)
    var isInWesternHemisphere: Bool {
        if self.longitude > 0 {
            return true
        } else {
            return false
        }
    }
    //A Bool called isInEasternHemisphere. This returns true if the coordinate is in the Eastern Hemisphere. (A coordinate is in the Eastern Hemisphere if its longitude is negative.)
    var isInEasternHemisphere: Bool {
        if self.longitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    // Create a method called distanceTo(). This method takes one parameter called coordinate. This parameter is another Coordinate class. distanceTo() should return the distance, in kilometers, between the two points.
    
    func distanceTo(coordinate:Coordinate) -> Double {
        // The distance between two coordinates requires some hairy math. The formula is acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000. acos() and sin() are both functions you can call in Swift.
        //let test = acos(sin(coordinat)
        
        let results = acos(sin(coordinate.latitude.radians) * sin(self.latitude.radians) + cos(coordinate.latitude.radians) * cos(self.latitude.radians) * cos(coordinate.longitude.radians-self.longitude.radians)) * 6371000 / 1000
        return results
    }
}


extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}


