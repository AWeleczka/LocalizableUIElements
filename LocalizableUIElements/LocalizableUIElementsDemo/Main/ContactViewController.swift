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
import UIKit

class ContactViewController: UIViewController {
  @IBOutlet var content: UILabel!

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    let calendar = Calendar.current
    var age: Int = -2

    let birthdayComponents = DateComponents(calendar: calendar, year: 1990, month: 10, day: 4, hour: 7, minute: 33, second: 0)
    if let birthday = birthdayComponents.date {
      let ageComponents = calendar.dateComponents([.year], from: birthday, to: Date())
      age = ageComponents.year ?? -1
    }

    self.content.localizedText(key: "contact.content", age)
  }

  @IBAction func buttonPressGithub() {
    let url = Localizable.localize(url: "contact.url.github")
    UIApplication.shared.openURL(url)
  }

  @IBAction func buttonPressTwitter() {
    let url = Localizable.localize(url: "contact.url.twitter")
    UIApplication.shared.openURL(url)
  }

  @IBAction func buttonPressWebsite() {
    let url = Localizable.localize(url: "contact.url.website")
    UIApplication.shared.openURL(url)
  }

  @IBAction func buttonPressLinkedin() {
    let url = Localizable.localize(url: "contact.url.linkedin")
    UIApplication.shared.openURL(url)
  }

  @IBAction func buttonPressXing() {
    let url = Localizable.localize(url: "contact.url.xing")
    UIApplication.shared.openURL(url)
  }
}
