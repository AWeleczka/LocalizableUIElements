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

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  private let languages: [String: String] = [
    "de": "Picker.de",
    "en": "Picker.en",
    "fr": "Picker.fr",
  ]

  @IBOutlet var titleLabel: UILabel!
  @IBOutlet var messageLabel: UILabel!

  @IBOutlet var picker: UIPickerView!

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.picker.delegate = self
    self.picker.dataSource = self

    self.setTexts()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    if let languageIndex = self.languages.index(forKey: Localizable.getLanguageCode()) {
      let rowNumber = self.languages.distance(from: self.languages.startIndex, to: languageIndex)
      self.picker.selectRow(rowNumber, inComponent: 0, animated: true)
    }
  }

  private func setTexts() {
    self.titleLabel.localizedText(key: "intro.welcome.title")
    self.messageLabel.localizedText(key: "intro.welcome")
  }

  // MARK: UIPickerViewDelegate

  public func pickerView(
    _: UIPickerView,
    attributedTitleForRow row: Int,
    forComponent _: Int) -> NSAttributedString? {
    return Localizable.localize(
      attributedString: Array(self.languages.values)[row],
      attributes: [.foregroundColor: UIColor.white])
  }

  public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent _: Int) {
    let languageCode = Array(self.languages.keys)[row]
    Localizable.LanguageCode = languageCode

    pickerView.reloadAllComponents()
    self.setTexts()
  }

  // MARK: UIPickerViewDataSource

  func numberOfComponents(in _: UIPickerView) -> Int {
    return 1
  }

  func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
    return self.languages.count
  }
}
