//
//  Created by Suraj Singh on 05/04/18.
// Copyright © 2018. All rights reserved.
//

import Foundation

struct Temperature {
  let degrees: String

  init(country: String, openWeatherMapDegrees: Double) {
    if country == "US" {
      degrees = String(TemperatureConverter.kelvinToFahrenheit(openWeatherMapDegrees)) + "\u{f045}"
    } else {
      degrees = String(TemperatureConverter.kelvinToCelsius(openWeatherMapDegrees)) + "\u{f03c}"
    }
  }
}
