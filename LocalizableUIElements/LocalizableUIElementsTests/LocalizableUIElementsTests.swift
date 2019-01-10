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

class LocalizableUIElementsTests: XCTestCase {
  override func setUp() {
    super.setUp()

    // XCUIApplication().launchArguments += ["-AppleLanguages", "(en)"]
    // XCUIApplication().launchArguments += ["-AppleLocale", "en_US"]
    // XCUIApplication().launch()
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testLocalizableCheckSuccess() {
    let key = "localizable.valid"

    let keyExists = Localizable.check(key)

    assert(keyExists)
  }

  func testLocalizableCheckFailure() {
    let key = "localizable.invalid"

    let keyExists = Localizable.check(key)

    assert(!keyExists)
  }

  func testLocalizableCheckEmpty() {
    let key = "localizable.empty"

    let keyExists = Localizable.check(key)

    assert(!keyExists)
  }
}
