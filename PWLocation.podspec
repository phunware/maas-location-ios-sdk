Pod::Spec.new do |s|
  s.name         = "PWLocation"
  s.version      = "3.9.0"
  s.summary      = "Phunware's Location SDK for use with its Multiscreen-as-a-Service platform"
  s.homepage     = "http://phunware.github.io/maas-location-ios-sdk/"
  s.author       = { 'Phunware, Inc.' => 'http://www.phunware.com' }
  s.social_media_url = 'https://twitter.com/Phunware'

  s.platform     = :ios, '10.0'
  s.source       = { :git => "https://github.com/phunware/maas-location-ios-sdk.git", :tag => "v#{s.version}" }
  s.license      = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware Inc. All rights reserved.' }

  s.ios.vendored_frameworks = 'Frameworks/PWLocation.xcframework'
  s.ios.dependency 'TMCache'
  s.ios.dependency 'SSZipArchive'
                          
  s.default_subspec = 'all-frameworks'

  s.subspec 'all-frameworks' do |sub|
    sub.dependency 'PWCore', '~> 3.9.0'
  end

  s.subspec 'NoAds' do |sub|
    sub.ios.vendored_frameworks = 'Frameworks/PWLocation.xcframework'
    sub.dependency 'PWCoreNoAds', '~> 3.9.0'
  end
  
  s.subspec 'MistProvider' do |sub|
    sub.ios.vendored_frameworks = 'Frameworks/MistProvider.xcframework'
    sub.dependency 'PWLocation/all-frameworks'
    sub.dependency 'MistSDKDR', '1.5.272'
  end
  
  s.subspec 'BeaconPointProvider' do |sub|
     sub.ios.vendored_frameworks = 'Frameworks/BeaconPointProvider.xcframework'
     sub.dependency 'PWLocation/all-frameworks'
     sub.dependency 'MistSDK', '1.5.58'
  end
                                            
  s.ios.library = 'c++'
  s.ios.frameworks = 'Security', 'QuartzCore', 'SystemConfiguration', 'MobileCoreServices', 'CoreTelephony', 'CoreBluetooth', 'CoreMotion', 'CoreLocation', 'MapKit'
  s.library = 'sqlite3', 'z', 'xml2.2'
  s.requires_arc = true
end