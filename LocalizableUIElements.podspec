Pod::Spec.new do |s|
  s.name = 'LocalizableUIElements'
  s.version = '1.0.0'
  s.summary = 'Localizable UIElements for Swift written in 4.2'
  s.description = <<-DESC
  A set of various UIKit elements with added localization-support.
  Using the on-board methods of NSLocalizedString without the need for special additions to your project.
  Adding storyboard IBDesignable objects for localization straight from the storyboard as well as in-code methods.
  DESC
  s.homepage = 'https://github.com/AWeleczka/LocalizableUIElements'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'AWeleczka' => 'github@accounts.aweleczka.de' }
  s.source = { :git => 'https://github.com/AWeleczka/LocalizableUIElements.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AWeleczka'
  s.ios.deployment_target = '8.0'
  s.source_files = 'LocalizableUIElements/LocalizableUIElements/**/*'
  s.exclude_files = 'LocalizableUIElements/LocalizableUIElements/*.plist'
end
