//
//  PlacesTabBarController.swift
//  Places
//
//  Created by Scott Bennett on 9/6/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {
    
    let placeController = PlaceController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // It the chiild viw controller conforms to the PlacesPresenter, we know ther si a placeController property that we can pass the pplaces controller to.
        for childVC in childViewControllers {
            
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
            
        }
        
        
    }


}
