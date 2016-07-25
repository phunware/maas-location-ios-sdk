Pod::Spec.new do |s|
  s.name         = "PWLocation"
<<<<<<< HEAD
  s.version      = "3.0.0"
=======
  s.version      = "1.2.0"
>>>>>>> upstream/master
  s.summary      = "PWLocation SDK for iOS"
  s.homepage     = "http://phunware.github.io/maas-location-ios-sdk/"
  s.author       = { 'Phunware, Inc.' => 'http://www.phunware.com' }
  s.social_media_url = 'https://twitter.com/Phunware'

  s.platform     = :ios, '7.0'
<<<<<<< HEAD
  s.source       = { :git => "https://github.com/phunware/maas-location-ios-sdk.git", :tag => "v3.0.0" }
  s.license      = { :type => 'Copyright', :text => 'Copyright 2014 by Phunware Inc. All rights reserved.' }
=======
  s.source       = { :git => "https://github.com/phunware/maas-location-ios-sdk.git", :tag => "v1.2.0" }
  s.license      = { :type => 'Copyright', :text => 'Copyright 2015 by Phunware Inc. All rights reserved.' }
>>>>>>> upstream/master

  s.public_header_files = 'Framework/PWLocation.framework/Versions/A/Headers/*.h'
  s.ios.vendored_frameworks = 'Framework/PWLocation.framework'
  s.dependency 'PWCore'

  s.xcconfig      = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/PWLocation/**"'}
  s.ios.frameworks = 'Security', 'QuartzCore', 'SystemConfiguration', 'MobileCoreServices', 'CoreTelephony', 'CoreBluetooth', 'CoreMotion', 'CoreLocation'
  s.library = 'sqlite3', 'z', 'xml2.2'
  s.requires_arc = true
end
