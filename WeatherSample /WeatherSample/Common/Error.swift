//
//  Created by Suraj Singh on 04/05/18.
// Copyright © 2018. All rights reserved.
//

import Foundation
// structure defined enums for the various error codes
struct SWError {
  enum Code: Int {
    case urlError                 = -6000
    case networkRequestFailed     = -6001
    case jsonSerializationFailed  = -6002
    case jsonParsingFailed        = -6003
  }

  let errorCode: Code
}
