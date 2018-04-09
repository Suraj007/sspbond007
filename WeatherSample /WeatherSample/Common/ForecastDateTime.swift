//
//  Created by Suraj Singh on 04/05/18.
// Copyright © 2018. All rights reserved.
//

import Foundation
// ForecastDateTime strcuture defined for the raw dates and converting the raw date to short time
struct ForecastDateTime {
  let rawDate: Double

  init(_ date: Double) {
    rawDate = date
  }

  var shortTime: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    let date = Date(timeIntervalSince1970: rawDate)
    return dateFormatter.string(from: date)
  }
}
