//
//  LocalizableUIElements - https://github.com/AWeleczka/LocalizableUIElements
//  A set of UIKit-Elements with easy localization in code and storyboard
//
//  Readme:        https://github.com/AWeleczka/LocalizableUIElements/blob/master/README.md
//  Changelog:     https://github.com/AWeleczka/LocalizableUIElements/blob/master/CHANGELOG.md
//  CocoaPod:      https://cocoapods.org/pods/LocalizableUIElements
//  License (MIT): https://github.com/AWeleczka/LocalizableUIElements/blob/master/LICENSE
//
//  Copyright (c) 2019 Alexander Weleczka - https://AWeleczka.de/
//

import LocalizableUIElements
import XCTest

class LocalizableLocalizeURLTests: XCTestCase {
  func testLocalizableLocalizeURLEn() {
    let lang = "en"
    let exp = URL(string: "https://local.host/en")!
    let key = "tests.localize.url"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeURLFormatEn() {
    let lang = "en"
    let exp = URL(string: "https://en.local.host/")!
    let key = "tests.localize.urlformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key, lang)

    assert(exp == localized)
  }

  func testLocalizableLocalizeURLDe() {
    let lang = "de"
    let exp = URL(string: "https://local.host/de")!
    let key = "tests.localize.url"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeURLFormatDe() {
    let lang = "de"
    let exp = URL(string: "https://de.local.host/")!
    let key = "tests.localize.urlformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key, lang)

    assert(exp == localized)
  }

  func testLocalizableLocalizeURLFr() {
    let lang = "fr"
    let exp = URL(string: "https://local.host/fr")!
    let key = "tests.localize.url"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeURLFormatFr() {
    let lang = "fr"
    let exp = URL(string: "https://fr.local.host/")!
    let key = "tests.localize.urlformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(url: key, lang)

    assert(exp == localized)
  }
}
