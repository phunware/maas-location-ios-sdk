Pod::Spec.new do |spec|
  spec.name = 'PWLocation'
  spec.version = '3.14.0'
  spec.license = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware Inc. All rights reserved.' }
  spec.summary = "Phunware's Location SDK for use with its Multiscreen-as-a-Service platform"
  spec.homepage = 'https://github.com/phunware/maas-location-ios-sdk/'
  spec.author = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url = 'https://twitter.com/phunware'

  spec.platform = :ios, '15.5'
  spec.source = { :git => 'https://github.com/phunware/maas-location-ios-sdk.git', :tag => "#{spec.version}" }
  spec.documentation_url = 'https://phunware.github.io/maas-location-ios-sdk/'
  spec.cocoapods_version = '>= 1.12.0'

  spec.default_subspecs =
    'Core',
    'DeviceIdentity'

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'PWCore', '~> 3.13.0'
    subspec.dependency 'SSZipArchive', '~> 2.5.5'
    subspec.dependency 'PINCache', '~> 3.0.4'

    subspec.vendored_frameworks = 'Frameworks/PWLocation.xcframework'
    
    subspec.frameworks =
      'CoreBluetooth',
      'CoreLocation',
      'CoreMotion',
      'CoreServices',
      'CoreTelephony',
      'MapKit',
      'QuartzCore',
      'Security',
      'SystemConfiguration'

    subspec.libraries =
      'c++',
      'sqlite3',
      'xml2.2',
      'z'
  end

  spec.subspec 'DeviceIdentity' do |subspec|
    subspec.dependency 'PWLocation/Core'
    subspec.dependency 'PWCore/DeviceIdentity', '~> 3.13.0'
  end
  
  spec.subspec 'LimitedDeviceIdentity' do |subspec|
    subspec.dependency 'PWLocation/Core'
  end

  # Frameworks linked with static libraries
  spec.subspec 'CoreStaticLinks' do |subspec|
    subspec.dependency 'PWCore/CoreStaticLinks', '~> 3.13.0'

    subspec.vendored_frameworks = 'FrameworksStaticLinks/PWLocation.xcframework'    
  end

  spec.subspec 'LimitedDeviceIdentityStaticLinks' do |subspec|
    subspec.dependency 'PWLocation/CoreStaticLinks'
  end
end
