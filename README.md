PWLocation SDK for iOS
================

>Version 3.1.2

This is Phunware's iOS SDK for the Location module. Visit http://maas.phunware.com/ for more details and to sign up.

Requirements
------------

- PWCore v3.0.3 or greater
- iOS 9.0 or greater
- Xcode 7 or greater

Installation
------------

The easiest way to use PWLocation is via CocoaPods. Simply add

`pod PWLocation`

to your `Podfile`, then the `PWCore` would be automatically included.


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
            signatureKey:@"YOUR_SIGNATURE_KEY"
           encryptionKey:@"YOUR_ENCRYPTION_KEY"]; // If you do not have an encryption key, just pass an empty string here i.e. @""
````

## PWManagedLocationManager

The `PWManagedLocationManager` class take a location update from one of the other providers listed here and uses an algorithm to improve the accuracy of that location before returning it to the consumer.

This manager relies on a building bundle that is created by the MaaS server. The building is configured in the MaaS portal, and the building identifier will be found in those portal configuration pages.

To create a `PWManagedLocationManager`, call its `initWithBuildingId:` function and pass it the desired building identifier. Finally, call `startUpdatingLocation` on the `PWManagedLocationManager` object. The manager will fetch and parse the required server bundles and begin giving location updates as soon as possible.

````objective-c
// Initialize the manager:
PWManagedLocationManager *manager = [[PWManagedLocationManager alloc] initWithBuildingId:<YOUR_BUILDING_IDENTIFIER>];

// Start fetching location updates:
[manager startUpdatingLocation];
````

NOTE: If using a virtual beacon provider such as Mist or Beacon Point with PWManagedLocationManager, the "Uses Bluetooth LE accessories" background mode must be enabled in the "Capabilities" tab of your project's settings.

## PWMockLocationManager

The `PWMockLocationManager` class allows you to implement a mock provider for testing and validation. This is extremely useful for location testing when you are not able to be on-site at a venue with a proper location provider. The mock location manager is initialized with a configuration object that is populated with JSON data.

It's important to note that the `floorIDMapping` property does not need to be specified for the `PWMockLocationManager`. The location floor IDs in the JSON should be equivalent to the building floor IDs.

````objective-c
// Initialize the configuration:
NSURL *configurationURL = [NSURL URLWithString:@"YOUR_FILE_URL"];
NSData *data = [NSData dataWithContentsOfURL:configurationURL];
NSDictionary *configurationData = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
PWMockLocationManagerConfiguration *configuration = [PWMockLocationManagerConfiguration unpack:configurationData];

// Initializing the location manager:
PWMockLocationManager *locationManager = [[PWMockLocationManager alloc] initWithMockLocationManagerWithConfiguration:configuration];
locationManager.delegate = self;

// Start fetching location updates:
[locationManager startUpdatingLocation];
````

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
