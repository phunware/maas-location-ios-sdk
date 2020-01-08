PWLocation SDK for iOS
================

>Version 3.8.4

This is Phunware's iOS SDK for the Location module. Visit http://maas.phunware.com/ for more details and to sign up.

Requirements
------------

- PWCore 3.8.x
- iOS 10.0 or greater
- Xcode 11.0 or greater

Installation
------------

The easiest way to use PWLocation is via CocoaPods. Simply add

`pod PWLocation`

to your `Podfile`, then the `PWCore` would be automatically included.

Alternatively you could specify 

`pod PWLocation/NoAds`

in your `Podfile` which would bring in `PWCoreNoAds` automatically.


The following frameworks are required:

````
CoreMotion.framework
CoreBluetooth.framework
libz.dylib
libxml2.2.dylib
libsqlite3.dylib
````


Documentation
------------

Documentation is included in the Documents folder in the repository as both HTML and as a .docset. You can also find the latest documentation here: http://phunware.github.io/maas-location-ios-sdk/



Integration
-----------

`PWLocation` is meant to be used in conjunction with PWMapKit but can be used as a standalone SDK.

## PWCore Setup

Some PWCore configuration is required to use any provider in PWLocation. In the MaaS portal, retrieve your application identifier, signature key, access key, and encryption key (if you have one). In your application's AppDelegate, add the following:

````objective-c
[PWCore setApplicationID:@"YOUR_APPLICATION_IDENTIFIER"
               accessKey:@"YOUR_ACCESS_KEY"
            signatureKey:@"YOUR_SIGNATURE_KEY"];
````

## Location Permissions

Location authorization of "When In Use" or "Always" is required for a PWLocationManager to function normally. Please follow [Apple's Best Practices](https://developer.apple.com/documentation/corelocation/choosing_the_authorization_level_for_location_services) for requesting location permissions. Do not attempt to use a PWLocationManager if the user does not provide location authorization as this can lead to unexpected behavior.

## PWManagedLocationManager

The `PWManagedLocationManager` class take a location update from one of the other providers and uses an algorithm to improve the accuracy of that location before returning it to the consumer.

This manager relies on a building bundle that is created by the MaaS server. The building is configured in the MaaS portal, and the building identifier will be found in those portal configuration pages.

To create a `PWManagedLocationManager`, call its `initWithBuildingId:` function and pass it the desired building identifier. Finally, call `startUpdatingLocation` on the `PWManagedLocationManager` object. The manager will fetch and parse the required server bundles and begin giving location updates as soon as possible.

````objective-c
// Initialize the manager:
PWManagedLocationManager *manager = [[PWManagedLocationManager alloc] initWithBuildingId:<YOUR_BUILDING_IDENTIFIER>];
manager.delegate = self;

// Start fetching location updates:
[manager startUpdatingLocation];
````

NOTE: If using a virtual beacon provider such as Mist or Beacon Point with PWManagedLocationManager, the "Uses Bluetooth LE accessories" background mode must be enabled in the "Capabilities" tab of your project's settings.

## Location Updates

Location updates are returned via the delegate. Update events are very similar to `CLLocationManagerDelegate` events.

````objective-c
- (void)locationManager:(id<PWLocationManager>)manager didUpdateToLocation:(id<PWLocation>)location {
    // Handle update.
}

- (void)locationManager:(id<PWLocationManager>)manager failedWithError:(NSError *)error {
    // Handle failure.
}
````

Privacy
-----------
You understand and consent to Phunware’s Privacy Policy located at www.phunware.com/privacy. If your use of Phunware’s software requires a Privacy Policy of your own, you also agree to include the terms of Phunware’s Privacy Policy in your Privacy Policy to your end users.

Terms
-----------
Use of this software requires review and acceptance of our terms and conditions for developer use located at http://www.phunware.com/terms/
