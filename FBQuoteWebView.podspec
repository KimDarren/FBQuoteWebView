Pod::Spec.new do |s|
  s.name         = "FBQuoteWebView"
  s.version      = "0.1.0"
  s.summary      = "Share the contents in the web view as QUOTE to Facebook."
  s.homepage     = "https://github.com/KimDarren/FBQuoteWebView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "KimDarren" => "korean.darren@gmail.com" }
  s.source       = { :git => "https://github.com/KimDarren/FBQuoteWebView.git",
                     :tag => "#{s.version}" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Classes/*.{h,m}'
  s.frameworks   = 'Foundation', 'UIKit'
  
  s.dependency 'FBSDKShareKit', '~> 4.11.0'
end
