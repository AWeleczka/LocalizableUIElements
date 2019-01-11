//
//  LocalizableUIElements - https://github.com/AWeleczka/LocalizableUIElements
//  A set of UIKit-Elements with easy localization in code and storyboard
//
//  Readme:        https://github.com/AWeleczka/LocalizableUIElements/blob/master/README.md
//  Changelog:     https://github.com/AWeleczka/LocalizableUIElements/blob/master/CHANGELOG.md
//  CocoaPod:      https://cocoapods.org/pods/...
//  License (MIT): https://github.com/AWeleczka/LocalizableUIElements/blob/master/LICENSE
//
//  Copyright (c) 2019 Alexander Weleczka - https://AWeleczka.de/
//

import LocalizableUIElements
import XCTest

class LocalizableCheckTests: XCTestCase {
  func testLocalizableCheckValid() {
    let key = "tests.check.valid"

    let keyExists = Localizable.check(key: key)

    assert(keyExists)
  }

  func testLocalizableCheckInvalid() {
    let key = "tests.check.invalid"

    let keyExists = Localizable.check(key: key)

    assert(!keyExists)
  }

  func testLocalizableCheckEmpty() {
    let key = "tests.check.empty"

    let keyExists = Localizable.check(key: key)

    assert(!keyExists)
  }
}
