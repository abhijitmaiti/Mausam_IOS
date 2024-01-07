//
//  LocationManager.swift
//  Mossum_IOS
//
//  Created by Abhijit Maiti on 1/7/24.
//

import Foundation
import CoreLocation

class LocationManager : NSObject , ObservableObject , CLLocationManagerDelegate {
    let manager = CLLocationManager()
    @Published var location : CLLocationCoordinate2D?
    @Published var loading = false
    
    override init() {
        super.init()
        manager.delegate = self
        
    }
    func requestLocation(){
        loading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        loading = false
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location" , error)
        loading = false
    }
    
}
