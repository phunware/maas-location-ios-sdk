Pod::Spec.new do |s|
  s.name         = "PWLocation"
  s.version      = "3.8.3"
  s.summary      = "PWLocation SDK for iOS"
  s.homepage     = "http://phunware.github.io/maas-location-ios-sdk/"
  s.author       = { 'Phunware, Inc.' => 'http://www.phunware.com' }
  s.social_media_url = 'https://twitter.com/Phunware'

  s.platform     = :ios, '10.0'
  s.source       = { :git => "https://github.com/phunware/maas-location-ios-sdk.git", :tag => "v3.8.3" }
  s.license      = { :type => 'Copyright', :text => 'Copyright 2014 by Phunware Inc. All rights reserved.' }

  s.ios.vendored_frameworks = 'Framework/PWLocation.framework'
  s.ios.dependency 'MistSDK', '1.4.2'
  s.ios.dependency 'TMCache'
  s.ios.dependency 'SSZipArchive'
              
  s.default_subspec = 'all-frameworks'

  s.subspec 'all-frameworks' do |sub|
    sub.dependency 'PWCore', '~> 3.8.0'
  end

  s.subspec 'NoAds' do |sub|
    sub.ios.vendored_frameworks = 'Framework/PWLocation.framework'
    sub.dependency 'PWCoreNoAds', '~> 3.8.0'
  end
                                                
  s.ios.library = 'c++'
  s.ios.frameworks = 'Security', 'QuartzCore', 'SystemConfiguration', 'MobileCoreServices', 'CoreTelephony', 'CoreBluetooth', 'CoreMotion', 'CoreLocation', 'MapKit'
  s.library = 'sqlite3', 'z', 'xml2.2'
  s.requires_arc = true
end
