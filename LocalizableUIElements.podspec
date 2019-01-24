Pod::Spec.new do |s|
  s.name = 'LocalizableUIElements'
  s.version = '0.1.4'
  s.summary = 'A set of UIKit-Elements with easy localization in code and storyboard'
  s.description = <<-DESC
                  A set of UIKit-Elements with easy localization in code and storyboard.
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
