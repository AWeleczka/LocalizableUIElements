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

class FeatureViewController: UIViewController {
  @IBAction func displayAlertDialog() {
    let titleLocalizableItem = Localizable.Item(
      key: "feature.UIAlertController.Alert.Title")
    let messageLocalizableItem = Localizable.Item(
      key: "feature.UIAlertController.Alert.Message")
    let alertDialog = UIAlertController(
      title: titleLocalizableItem,
      message: messageLocalizableItem,
      preferredStyle: .alert)

    let cancelLocalizedItem = Localizable.Item(
      key: "feature.UIAlertController.Alert.Cancel")
    alertDialog.addAction(UIAlertAction(
      title: cancelLocalizedItem,
      style: .cancel,
      handler: nil))

    self.present(alertDialog, animated: true, completion: nil)
  }

  @IBAction func displayActionSheet() {
    var timestring = "that late"

    let calendar = Calendar.current
    let currentDate = calendar.dateComponents([.hour, .minute], from: Date())
    if let hour = currentDate.hour, let minute = currentDate.minute {
      timestring = String(format: "%d:%d", hour, minute)
    }

    let titleLocalizableItem = Localizable.Item(
      key: "feature.UIAlertController.ActionSheet.Title")
    let messageLocalizableItem = Localizable.Item(
      key: "feature.UIAlertController.ActionSheet.Message",
      timestring)
    let actionSheet = UIAlertController(
      title: titleLocalizableItem,
      message: messageLocalizableItem,
      preferredStyle: .actionSheet)

    let cancelLocalizedItem = Localizable.Item(
      key: "feature.UIAlertController.ActionSheet.Cancel")
    actionSheet.addAction(UIAlertAction(
      title: cancelLocalizedItem,
      style: .cancel,
      handler: nil))

    self.present(actionSheet, animated: true, completion: nil)
  }
}
