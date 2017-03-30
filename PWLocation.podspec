Pod::Spec.new do |s|
  s.name         = "PWLocation"
  s.version      = "3.1.1"
  s.summary      = "PWLocation SDK for iOS"
  s.homepage     = "http://phunware.github.io/maas-location-ios-sdk/"
  s.author       = { 'Phunware, Inc.' => 'http://www.phunware.com' }
  s.social_media_url = 'https://twitter.com/Phunware'

  s.platform     = :ios, '9.0'
  s.source       = { :http => "http://lbs-prod.s3.amazonaws.com/sdk/ios/PWLocation/3.1.1/PWLocation.3.1.1.zip" }
  s.license      = { :type => 'Copyright', :text => 'Copyright 2014 by Phunware Inc. All rights reserved.' }

  s.ios.vendored_frameworks = 'Framework/PWLocation.framework'
  s.dependency 'PWCore'
  s.dependency 'MistSDK'
  s.dependency 'TMCache'

  s.ios.library = 'c++'
  s.ios.frameworks = 'Security', 'QuartzCore', 'SystemConfiguration', 'MobileCoreServices', 'CoreTelephony', 'CoreBluetooth', 'CoreMotion', 'CoreLocation', 'MapKit'
  s.library = 'sqlite3', 'z', 'xml2.2'
  s.requires_arc = true
end
