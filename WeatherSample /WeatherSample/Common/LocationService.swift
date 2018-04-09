//
//  Created by Suraj Singh on 05/04/18.
// Copyright © 2018. All rights reserved.
//

import Foundation
import CoreLocation

// protocol for getting updates of location
protocol LocationServiceDelegate {
  func locationDidUpdate(_ service: LocationService, location: CLLocation)
}

// LocationService class thr implement CoreLocation delegate methods.
class LocationService: NSObject {
  var delegate: LocationServiceDelegate?

  fileprivate let locationManager = CLLocationManager()

  override init() {
    super.init()

    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
  }

    // requestLocation method for requesting location updates
  func requestLocation() {
    locationManager.requestWhenInUseAuthorization()
    locationManager.requestLocation()
  }
}

// MARK: - CLLocationManagerDelegate
extension LocationService : CLLocationManagerDelegate {
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    if let location = locations.first {
      print("Current location: \(location)")
      delegate?.locationDidUpdate(self, location: location)
    }
  }

  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("Error finding location: \(error.localizedDescription)")
  }
}
