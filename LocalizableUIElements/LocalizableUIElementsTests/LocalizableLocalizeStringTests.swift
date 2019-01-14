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

class LocalizableLocalizeStringTests: XCTestCase {
  func testLocalizableLocalizeStringEn() {
    let lang = "en"
    let exp = "english"
    let key = "tests.localize.string"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormatEn() {
    let lang = "en"
    let exp = lang + " : english"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, lang)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormat2En() {
    let lang = "en"
    let exp = lang + " : english"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, arguments: [lang])

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringDe() {
    let lang = "de"
    let exp = "german"
    let key = "tests.localize.string"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormatDe() {
    let lang = "de"
    let exp = lang + " : german"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, lang)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormat2De() {
    let lang = "de"
    let exp = lang + " : german"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, arguments: [lang])

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFr() {
    let lang = "fr"
    let exp = "french"
    let key = "tests.localize.string"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormatFr() {
    let lang = "fr"
    let exp = lang + " : french"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, lang)

    assert(exp == localized)
  }

  func testLocalizableLocalizeStringFormat2Fr() {
    let lang = "fr"
    let exp = lang + " : french"
    let key = "tests.localize.stringformat"

    Localizable.LanguageCode = lang
    let localized = Localizable.localize(string: key, arguments: [lang])

    assert(exp == localized)
  }
}
