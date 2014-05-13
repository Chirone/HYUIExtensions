Pod::Spec.new do |s|
  s.name     = 'HYUIExtensions'
  s.version  = '0.1.0'
  s.license  = 'MIT'
  s.summary  = 'UI extensions to shorten the code required for making UI'
  s.homepage = 'https://github.com/Chirone/HYUIExtensions'
  s.author   = { 'Hayden Young' => 'i_of_me@hotmail.com' }
  s.social_media_url = "http://twitter.com/haydentheyoung"

  s.source   = { :git => 'https://github.com/Chirone/HYUIExtensions.git', :tag => 'v0.1.0' }

  s.description = %{
    HY UI Extensions is a group of extensions for standard view subclasses such as UIButton and UILabel. 
    The extensions compress down the multiple lines of code to create one instance and gathers the common things into one method.
  }

  s.source_files = 'Classes/HYExtensions/*.{h,m}'

  s.ios.frameworks = 'Foundation', 'UIKit'
  s.osx.frameworks = 'Foundation', 'AppKit'

  s.ios.deployment_target = '6.0' # minimum SDK with autolayout
  s.requires_arc = true
end