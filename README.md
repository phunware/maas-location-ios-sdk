PWLocation SDK for iOS
================
[![Version](https://img.shields.io/cocoapods/v/PWLocation.svg?style=flat-square)](https://cocoapods.org/pods/PWLocation) [![License](https://img.shields.io/cocoapods/l/PWLocation.svg?style=flat-square)](https://cocoapods.org/pods/PWLocation) [![Platforms](https://img.shields.io/cocoapods/p/PWLocation?style=flat-square)](https://cocoapods.org/pods/PWLocation) [![Twitter](https://img.shields.io/badge/twitter-@phunware-blue.svg?style=flat-square)](https://twitter.com/phunware)

This is Phunware's Location SDK for use with its Multiscreen-as-a-Service platform. It provides indoor/outdoor positioning capabilities for venues. Visit http://maas.phunware.com for more details and to sign up.

Requirements
------------
- PWCore 3.11.x
- iOS 13.0 or greater
- Xcode 12.0 or greater

Installation
------------
### CocoaPods
It is required to use [CocoaPods](http://www.cocoapods.org) 1.10 or greater to integrate the framework. Simply add the following to your Podfile:

````ruby
pod 'PWLocation'
````

To enable support for Mist as a location provider, add the `MistProvider` subspec:

````ruby
pod 'PWLocation/MistProvider'
````

Documentation
------------
Documentation is included in the Documents folder in the repository as both HTML and as a .docset. You can also find the latest documentation here: http://phunware.github.io/maas-location-ios-sdk

Integration
-----------
PWLocation is meant to be used as a dependency to PWMapKit, but can be used as a standalone SDK.

### PWCore
PWCore configuration is required to use any location provider in PWLocation. In the MaaS portal, retrieve your application identifier, signature key, access key, and encryption key (if you have one). In your application's delegate, add the following:

````swift
PWCore.setApplicationID("APPLICATION_ID",
                        accessKey: "ACCESS_KEY",
                        signatureKey: "SIGNATURE_KEY")
````

## Location Permissions
Location authorization of "When In Use" or "Always" is required for a PWLocationManager to function normally. Please follow [Apple's Best Practices](https://developer.apple.com/documentation/corelocation/choosing_the_authorization_level_for_location_services) for requesting location permissions. Do not attempt to use a PWLocationManager if the user does not provide location authorization as this can lead to unexpected behavior.

## PWManagedLocationManager
`PWManagedLocationManager` is a class that takes a location update from one of the other location providers and uses an algorithm to improve the accuracy of that location before returning it to the consumer.

`PWManagedLocationManager` relies on a building bundle that is created by the MaaS server. The building is configured in the MaaS portal, and the building identifier will be found in those portal configuration pages.

To create a `PWManagedLocationManager`, call its `initWithBuildingId:` function and pass it the desired building identifier. Finally, call `startUpdatingLocation` on the `PWManagedLocationManager` object. The manager will fetch and parse the required server bundles and begin giving location updates as soon as possible.

````swift
// Initialize the manager
let manager = PWManagedLocationManager(buildingId: <BUILDING_IDENTIFIER>)
manager.delegate = self

// Start fetching location updates
manager.startUpdatingLocation()
````

**NOTE**: If using a virtual beacon location provider, such as Mist, the "Uses Bluetooth LE accessories" background mode must be enabled in the "Capabilities" tab of your project's settings.

## Location Updates
Location updates are returned via the delegate. Update events are very similar to `CLLocationManagerDelegate` events.

````swift
func locationManager(_ manager: PWLocationManager!, didUpdateTo location: PWLocationProtocol!) {
    // Handle update
}

func locationManager(_ manager: PWLocationManager!, failedWithError error: Error!) {
    // Handle failure
}
````

Privacy
-----------
You understand and consent to Phunware’s Privacy Policy located at www.phunware.com/privacy. If your use of Phunware’s software requires a Privacy Policy of your own, you also agree to include the terms of Phunware’s Privacy Policy in your Privacy Policy to your end users.

Terms
-----------
Use of this software requires review and acceptance of our terms and conditions for developer use located at http://www.phunware.com/terms
