//
//  Created by Suraj Singh on 04/04/18.
// Copyright © 2018. All rights reserved.
//

import Foundation
// weather structure for location, temperature in formation
struct Weather {
  let location: String
  let iconText: String
  let temperature: String

  let forecasts: [Forecast]
}
