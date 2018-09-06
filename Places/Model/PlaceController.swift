//
//  PlaceController.swift
//  Places
//
//  Created by Scott Bennett on 9/6/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import Foundation

class PlaceController {
    
    private(set) var places = [Place]()
    
    // Create
    func creatPalce(with name: String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        places.append(place)
    }
}
