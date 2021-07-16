Pod::Spec.new do |spec|
  spec.name = 'PWLocation'
  spec.version = '3.11.0'
  spec.license = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware Inc. All rights reserved.' }
  spec.summary = "Phunware's Location SDK for use with its Multiscreen-as-a-Service platform"
  spec.homepage = 'https://github.com/phunware/maas-location-ios-sdk/'
  spec.author = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url = 'https://twitter.com/phunware'

  spec.platform = :ios, '12.0'
  spec.source = { :git => "https://github.com/phunware/maas-location-ios-sdk.git", :tag => "v#{spec.version}" }
  spec.documentation_url = 'https://phunware.github.io/maas-location-ios-sdk/'

  spec.default_subspecs =
    'Core',
    'DeviceIdentity'

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'PWCore', '~> 3.11.0'
    subspec.dependency 'SSZipArchive', '~> 2.4.0'
    subspec.dependency 'TMCache', '~> 2.1.0'

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
    subspec.dependency 'PWCore/DeviceIdentity', '~> 3.11.0'
  end
  
  spec.subspec 'LimitedDeviceIdentity' do |subspec|
    subspec.dependency 'PWLocation/Core'
  end

  spec.subspec 'MistProviderCore' do |subspec|
    subspec.dependency 'PWLocation/Core'
    subspec.dependency 'MistSDKDR', '1.5.280'

    subspec.vendored_frameworks = 'Frameworks/MistProvider.xcframework'
    
    subspec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    subspec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  end

  spec.subspec 'MistProvider' do |subspec|
    subspec.dependency 'PWLocation/MistProviderCore'
    subspec.dependency 'PWLocation/DeviceIdentity'
  end
  
  spec.subspec 'MistProviderWithLimitedDeviceIdentity' do |subspec|
    subspec.dependency 'PWLocation/MistProviderCore'
  end

  spec.subspec 'BeaconProviderCore' do |subspec|
    subspec.dependency 'PWLocation/Core'
    subspec.dependency 'MistSDK', '1.5.58'

    subspec.vendored_frameworks = 'Frameworks/BeaconProvider.xcframework'
    
    subspec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    subspec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  end

  spec.subspec 'BeaconProvider' do |subspec|
    subspec.dependency 'PWLocation/BeaconProviderCore'
    subspec.dependency 'PWLocation/DeviceIdentity'
  end
  
  spec.subspec 'BeaconProviderWithLimitedDeviceIdentity' do |subspec|
    subspec.dependency 'PWLocation/BeaconProviderCore'
  end
end
