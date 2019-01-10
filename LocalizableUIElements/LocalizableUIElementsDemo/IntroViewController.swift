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
import UIKit

class IntroViewController: UIViewController {
  @IBOutlet var descriptionLabel: UILabel!

  override func viewDidAppear(_: Bool) {
    UIView.animate(
      withDuration: 3.0,
      delay: 2.0,
      options: .curveEaseIn,
      animations: {
        self.descriptionLabel.text = "intro.welcome".localized()
      },
      completion: { _ in
    })
  }
}
