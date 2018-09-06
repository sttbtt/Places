//
//  CreateNewPlacesViewController.swift
//  Places
//
//  Created by Scott Bennett on 9/6/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class CreateNewPlacesViewController: UIViewController, PlacesPresenter {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    var placeController: PlaceController?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func createNewPlace(_ sender: Any) {
        guard let name = nameTextField.text,
            let latitudeString = latitudeTextField.text,
            let latitude = Double(latitudeString),
            let longitudeString = longitudeTextField.text,
        let longitude = Double(longitudeString) else { return
            
            placeController?.creatPalce(with: name, latitude: latitude, longitude: longitude)
        }
    }
    
    
    


}
