//
//  MapViewController.swift
//  Places
//
//  Created by Scott Bennett on 9/6/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var mapView: MKMapView!
    
    var location: (latitude: Double, longitude: Double)? {
        didSet {
            updateMapViewLocation()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        updateMapViewLocation()
        
    }
    
    private func updateMapViewLocation() {
        guard let location = location, isViewLoaded else { return }
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
